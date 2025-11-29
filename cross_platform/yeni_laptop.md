# YENI LAPTOP

## Disk ve boyutları

- Sadece 1 SSD olsun. Eski tip HDD olmasın. Böylece laptop sarsılmalarda çok daha az zarar görür.
- Mümkünse sadece (ortalama) 512 GB olsun. Böylece boş alanın üzerinden geçmek daha kısa sürer.
- Toplam (ortalama) 512 ise, birden fazla fiziksel diskte olabilir (örnek: 2 adet 256'lık olabilir).

minimum boyutlar GB olarak:

PARTITIONS:

Note: real size values can be seen only via sudo permissions. example: "sudo baobab".

- EFI 1

- /boot 2

- FEDORA
  - OS except all below: 21
  - /var/lib/flatpak only: 13
  - Swap space: 20 (for 16 GB machine, if you run windows 11 inside VM, 10 gb swap is fully using)
  - home directory:
    - others except all below: 2
    - android emulator only 1: 6
    - m2 and gradle: 4

- VM:
  - FILES_ONLY_ISO: 29
  - VM NORMAL USAGE
    - fedora: 40
    - windows 11: 80

- INTERNAL-1
  - extracted & standalone apps: 15
  - firefox profiles: 5

    this profile directory includes its own cache inside each profile (because they are not inside HOME directory). but cache can be clear. it does not break logged-in session. 3 GB is the size after cache cleaned. Cache can be more than 1 GB for each profile.

- INTERNAL-2 (move all below in INTERNAL-1 as possible)
  - VM BACKUPS:
    - windows 10: 12
    - fedora: 16
    - windows 11: 16
  - FILES_ONLY_CRTCL_AP: 3
  - FILES_ONLY_DANC: 1
  - FILES_ONLY_APPS: 10
  - FILES_ONLY_BOK_AND_TUTO_SOURCE: 3
  - FILES_ONLY_MSC_AND_COD_EXMPLS: 28
  - FILES_ONLY_PUBLIC: 5
  - FILES_ONLY_PUBLIC extracted: 5
  - FILES only temp: 1
  - FILES FAST and others: 3

## Fiziksel özellikler

- sağ ve solunda en az 1 er adet usb (type tan bağımsız) girişi olması şart.
- ms-windows'un en güncel stabil sürümünün default'ta geliyor olması (olası bir ihtiyaç durumunda eski windows değil, güncel windows driver'larında sorun yaşanmadığına emin olmak için)
- min 30 GB RAM olmalı (windows 11 VM içinde kullanıldığında SWAP space olmazsa bütün bu RAM doluyor)
- ekranın 180 dereceye yakın durabiliyor/esnek olması (uzanırken çalışıldığında gerekli) (180 olması şart değil. hatta 180 hiçbir zaman kullanmıyorum. max 165 derece yeterli.)
- klavyesinde aydınlatması (klavyedeki tuşlar yoksa gece görünmüyor)
- tüm kasa sert bir kaplama olmalı (örneğin; çelik gibi). çünkü plastik olunca, cihazın herhangi bir yerine temas edildiğinde cihazın zarar görme ihtimali artıyor (örnek: bavulda sıkıştığında, klavyedeki tuşlara sert basınca donanımın içine temas ediyor olabilir).
- girişler ve çıkışlar:
  - `webcam` ve `kulaklık jack girişi` (ev dışındayken yapılan iş görüşmeleri için)
  - `usb-type-c` (en az 1 `usb` portu `usb` 3 veya üstünü desteklemesi gerekli)
  - `DisplayPort` (eğer diğer usb `type-c` girişi zaten `DisplayPort` uyumlu ise, bunun ekstra bir giriş olması şart değil)
  - `hdmi`
  - opsiyonel ama büyük avantaj:
    - `ethernet`
    - `thunderbolt`
    - `usb-type-A` (`type-c`'ye ek olarak farklı/ekstra giriş olması)
    - girişlerin sayısının fazla olması
    - `SD card okuyucu`

- yazılımların donanım gereksinimleri `my_dotfiles` projesinde yazıyor.

- cpu

  aşağıdaki değerlerin fazla olması önemli. hıza bile tercih edilir. çunku birden fazla VM acabilmemizi sağlıyor.

  - `total core` = `Performance-cores` + `Efficient-cores`

    `Performance-cores` `hyper-threading` olan `CPU`'larda 2 ile çarpılıyor:

    `Total Threads` = `Performance-cores`x2 + `Efficient-cores`

## cpu feature compare

https://www.intel.com/content/www/us/en/products/compare.html?productIds=208662,226259

## Teknik servisler

- `asus` - teknik servisi `şişli`'ye uzakta.

- `lenovo` - teknik servisi `metrocity-avm` ve `maltepe metro çıkışı`. (`Lenovo` özellikle `ThinkPad` serisi `UEFI` arayüzünde diğer markalara göre çok daha fazla seçenek sunuyor)

- `dell` - eve geliyor.

- `HP`'nin bi sürü yerde teknik servisi var. en çok bu adamlarda var. ama "`HP Bölge Onarım Merkezi`" `maltepe metro çıkışı` yürüme. (burasından herkes aşırı memnun)

## Satın alınabilecek yerler

Mümkünse internetten alma ve gidip elle kendin al laptop'u.

<https://www.kurumsalit.com>

<https://www.mediamarkt.com.tr/>

<https://www.vatanbilgisayar.com>

<https://www.teknosa.com>
