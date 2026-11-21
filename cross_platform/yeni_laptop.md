# YENI LAPTOP

## Disk ve boyutları

- Sadece SSD olsun. Eski tip HDD olmasın. Böylece laptop sarsılmalarda çok daha az zarar görür.
- SSD'lerde boş alanın üstüne yazmaya gerek yok. Zaten LUKS ile şifreliyorum dosya sistemlerini. Bu sebeple ufak boyutlu disk almaya gerek yok. Min 512 GB şart.

minimum boyutlar GB olarak:

PARTITIONS:

Note: real size values can be seen only via sudo permissions. example: "sudo baobab".

- EFI 1

- /boot 2

- FEDORA
  - /nix 6 GB
  - OS except all below: 21
  - /var/lib/flatpak only: 14
  - Swap space: 20 (for 16 GB machine, if you run windows 11 inside VM, 10 gb swap is fully using)
  - home directory:
    - android emulator only 1: 6

- VM:
  - FILES_ONLY_ISO: 23
  - VM DAILY USAGE
    - fedora: 40
    - windows 11: 90
  - M2 & NPM & container & HOME = 200

> TOTAL OF ABOVE 414 (MINIMAL VALUE FOR PARTITION SCHEME)

- INTERNAL-1
  - extracted & standalone apps: 30
  - firefox profiles: 10

    this profile directory includes its own cache inside each profile (because they are not inside HOME directory). but cache can be clear. it does not break logged-in session. Cache can be more than 1 GB for each profile.

- INTERNAL-2 (move all below in INTERNAL-1 as possible)
  - VM BACKUPS:
    - fedora: 15
    - windows 11: 15
  - FILES_ONLY_CRTCL_AP: 3
  - FILES_ONLY_DANC: 1
  - FILES_ONLY_APPS: 7
  - FILES_ONLY_BOK: 1
  - FILES_ONLY_MSC: 27
  - FILES_ONLY_PUBLIC: 4
  - FILES_ONLY_PUBLIC extracted: 4
  - FILES only temp: 1
  - OTHERS FOR FUTURE USE: 100

> TOTAL OF ABOVE 218 (MINIMAL VALUE FOR PARTITION SCHEME)

## Fiziksel özellikler

- sağ ve solunda en az 1 er adet usb (type tan bağımsız) girişi olması büyük avantaj.
- ms-windows'un en güncel stabil sürümünün default'ta geliyor olması (olası bir ihtiyaç durumunda eski windows değil, güncel windows driver'larında sorun yaşanmadığına emin olmak için)
- min 30 GB RAM olmalı (windows 11 VM içinde kullanıldığında SWAP space olmazsa bütün bu RAM doluyor)
- ekranın 180 dereceye yakın durabiliyor/esnek olması (uzanırken çalışıldığında gerekli) (180 olması şart değil. hatta 180 hiçbir zaman kullanmıyorum. max 165 derece yeterli.)
- klavyesinde aydınlatması (klavyedeki tuşlar yoksa gece görünmüyor)
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

- `lenovo` - teknik servisi `metrocity-avm` ve `maltepe metro çıkışı`.
  - `Lenovo` özellikle `ThinkPad` serisi `UEFI` arayüzünde diğer markalara göre çok daha fazla seçenek sunuyor.
  - `Fedora` için driver ve hatta `UEFI` update desteği sunuyor.

- `dell` - eve geliyor.

- `HP`'nin bi sürü yerde teknik servisi var. en çok bu adamlarda var. ama "`HP Bölge Onarım Merkezi`" `maltepe metro çıkışı` yürüme. (burasından herkes aşırı memnun)

## Satın alınabilecek yerler

Mümkünse internetten alma ve gidip elle kendin al laptop'u.

<https://www.kurumsalit.com>

<https://www.mediamarkt.com.tr/>

<https://www.vatanbilgisayar.com>

<https://www.teknosa.com>
