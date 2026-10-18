# DETAY CEP CENTER - BEYŞEHİR / KONYA
## Modern & Profesyonel Web Sitesi (Turkcell Yetkili Bayisi)

Beyşehir'de 26 yıldır faaliyet gösteren **Detay Cep Center** için modern, premium, tamamen responsive ve Turkcell kurumsal kimliğine uygun olarak geliştirilmiş resmi web sitesi.

---

### 🎨 Marka Kimliği ve Renk Paleti
* **Turkcell Sarısı:** `#FFC900` (Aksiyon butonları, CTA, rozetler ve vurgular)
* **Kurumsal Koyu Mavi:** `#003DA5` (Kartlar, ikon zeminleri, buton detayları)
* **Derin Lacivert:** `#071A36` (Hero alanı, başlıklar, footer)
* **Beyaz:** `#FFFFFF` (Ferah içerik alanları ve kart zeminleri)
* **Açık Gri:** `#F5F7FA` (Modern ve göz yormayan arka plan)

---

### 📱 İletişim ve Hat Bilgileri
* **İşletme Adı:** Detay Cep Center (Turkcell Yetkili Bayisi)
* **Konum:** Beyşehir, Konya, Türkiye
* **WhatsApp Satış & Fiyat Bilgi Hattı:** `0532 696 06 00` (`https://wa.me/905326960600`)
* **Mağaza, Teknik Servis & Danışma Hattı:** `0332 512 33 00` (`tel:+903325123300`)
* **Adres:** Evsat Mahallesi, Antalya Caddesi / Lütfullah Sokak No: 10/A (Yeni Bedesten Civarı), Beyşehir / KONYA

---

### 📁 Proje Dosya Yapısı
```
DETAYWEBSİTE/
├── index.html                   # Ana web sitesi (HTML5, Semantik, SEO & LocalBusiness uyumlu)
├── css/
│   └── style.css                # Turkcell renk paletli, responsive, modern stil dosyası
├── js/
│   ├── products.js              # 17 telefon modelinin yer aldığı tek merkezli ürün veritabanı
│   └── main.js                  # Filtreleme, arama, dinamik WhatsApp mesajı ve modal mantığı
├── README.md                    # Proje dökümantasyonu ve güncelleme kılavuzu
└── (17 Gerçek Telefon Görseli: iPhone, Samsung, Redmi modelleri)
```

---

### 🚀 Nasıl Çalıştırılır?
Kurulum veya derleme gerektirmez. `index.html` dosyasına çift tıklayarak **Google Chrome**, **Microsoft Edge**, **Safari** veya dilediğiniz herhangi bir tarayıcıda hemen çalıştırabilirsiniz.

---

### ✏️ Yeni Telefon Ekleme veya Fiyat Güncelleme Talimatı
Tüm telefon modelleri `js/products.js` dosyasında düzenlenebilir bir dizi içinde tutulmaktadır.

**Yeni bir telefon eklemek için:**
`js/products.js` dosyasını açıp listenin en altına şu şablonu eklemeniz yeterlidir:

```javascript
{
  id: 'yeni-model-id',
  brand: 'apple', // 'apple', 'samsung' veya 'xiaomi'
  brandName: 'Apple',
  name: 'Telefon Model Adı',
  image: 'fotograf-adi.jpg', // Klasöre attığınız fotoğrafın tam dosya adı
  condition: 'sifir', // 'sifir' veya 'ikinci-el'
  conditionLabel: 'Sıfır Cihaz', // veya 'İkinci El (Temiz)'
  storage: '128 GB / 256 GB',
  price: null, // Doğrulanmış fiyat varsa '35.000 TL', yoksa null bırakın
  priceText: "Güncel fiyat için WhatsApp'tan bilgi alın",
  badge: 'Yeni Ürün',
  description: 'Cihaz hakkında kısa açıklama.'
}
```

---

### 🔍 Temel Özellikler
1. **Dinamik WhatsApp Mesajı:** Her ürün kartındaki "WhatsApp'tan Fiyat Sor" butonuna tıklandığında, ilgili telefon modelinin adını otomatik olarak mesaja ekleyerek `0532 696 06 00` numaralı hatta yönlendirir.
2. **Doğrulanmış Bilgi İlkesi:** Fiyatı net olmayan cihazlarda uydurma fiyat yerine *"Güncel fiyat için WhatsApp'tan bilgi alın"* ifadesi kullanılmıştır.
3. **Gerçek Görsel Eşleşmesi:** Klasördeki 17 gerçek telefon fotoğrafı esnetilmeden, en-boy oranı korunarak (`object-fit: contain`) kartlara yerleştirilmiştir.
4. **Teknik Servis İletişimi:** `0332 512 33 00` nolu sabit hat tek tıkla arama yapabilir formatta entegre edilmiştir.
5. **Gelişmiş Filtreleme ve Arama:** Tüm Telefonlar, Sıfır Telefonlar, İkinci El Telefonlar ve Marka bazında anlık filtreleme ve model arama çubuğu.
6. **Mobil Uyum ve Hızlı Aksiyon:** Mobilde parmak dostu gezinme, sağdan açılan hamburger menü, sağ altta sabit WhatsApp butonu ve alt hızlı arama çubuğu.
