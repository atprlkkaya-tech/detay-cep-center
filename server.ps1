param (
    [int]$Port = 5050
)

Add-Type -AssemblyName System.Web
$Root = $PSScriptRoot
if (-not $Root) {
    $Root = (Get-Location).Path
}

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")
try {
    $listener.Start()
    Write-Host "Detay Cep Center Web Sunucusu Aktif: http://localhost:$Port/ (Klasor: $Root)"
} catch {
    Write-Error "Sunucu baslatilamadi: $_"
    exit 1
}

$mimeTypes = @{
    ".html" = "text/html; charset=utf-8"
    ".htm"  = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".png"  = "image/png"
    ".webp" = "image/webp"
    ".avif" = "image/avif"
    ".svg"  = "image/svg+xml"
    ".ico"  = "image/x-icon"
}

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response

    $rawPath = [System.Web.HttpUtility]::UrlDecode($request.Url.LocalPath).TrimStart('/')
    if ([string]::IsNullOrWhiteSpace($rawPath)) {
        $rawPath = "index.html"
    }

    $localPath = Join-Path $Root $rawPath

    if (Test-Path $localPath -PathType Leaf) {
        $ext = [System.IO.Path]::GetExtension($localPath).ToLower()
        if ($mimeTypes.ContainsKey($ext)) {
            $response.ContentType = $mimeTypes[$ext]
        } else {
            $response.ContentType = "application/octet-stream"
        }

        try {
            $bytes = [System.IO.File]::ReadAllBytes($localPath)
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
            $response.StatusCode = 200
        } catch {
            $response.StatusCode = 500
        }
    } else {
        $response.StatusCode = 404
        $notFoundMsg = [System.Text.Encoding]::UTF8.GetBytes("404 Dosya Bulunamadi: $rawPath")
        $response.OutputStream.Write($notFoundMsg, 0, $notFoundMsg.Length)
    }

    $response.OutputStream.Close()
}
