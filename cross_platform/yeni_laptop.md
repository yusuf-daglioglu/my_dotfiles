
# Disk ve boyutları

- Sadece 1 SSD olsun. Eski tip HDD olmasın. Böylece laptop sarsılmalarda çok daha az zarar görür.
- Mümkünse sadece (ortalama) 512 GB olsun. Böylece boş alanın üzerinden geçmek daha kısa sürer.

minimum boyutlar GB olarak:

PARTITIONS:

Note: real size values can be seen only via sudo permissions. example: "sudo baobab".

- EFI 1

- /boot 2

- FEDORA
  - OS except all below: 21
  - /var/lib/flatpak only: 13
  - Swap space: 10 (for 16 GB machine, if you run windows 11 inside VM, 10 gb swap is fully using)
  - home directory:
    - others except all below: 2
    - android emulator only 1: 6
    - m2 and gradle: 4

- VM:
  - FILES_ONLY_ISO: 29
  - VM_TEMP
    - fedora
      - initial: 16
      - normal use: 30
    - windows 11
      - initial: 15
      - normal use: 70

- INTERNAL-1
  - backups: 1 (you dont need this if you have 1 pyhsical disk only)
  - extracted & standalone apps: 8
  - firefox profiles: 8
    
    this profile directory includes its own cache inside each profile (because they are not inside HOME directory). but cache can be clear. it does not break logged-in session. 3 GB is the size after cache cleaned. Cache can be more than 1 GB for each profile. 

- INTERNAL-2 (move all below in INTERNAL-1 as possible)
  - VM:
    - windows 10 (as backup): 12
    - fedora (as backup): 16
    - windows 11 (as backup): 15
  - FILES_CRTCL_AP: 3
  - FILES_ONLY_DANC: 2
  - FILES_ONLY_APPS: 8
  - FILES_ONLY_BOK_AND_TUTO_SOURCE_AND_FMLY: 3
  - FILES_ONLY_MSC_AND_COD_EXMPLS: 27
  - FILES_ONLY_PUBLIC: 6
  - FILES_ONLY_PUBLIC extracted: 6
  - FILES others: 2

---

# Fiziksel özellikler

- sağ ve solunda en az 1 er adet usb (type tan bağımsız) girişi olması şart.
- ms-windows'un en güncel stabil sürümünün default'ta geliyor olması (olası bir ihtiyaç durumunda eski windows değil, güncel windows driver'larında sorun yaşanmadığına emin olmak için)
- min 30 GB RAM olmalı (windows 11 VM içinde kullanıldığında SWAP space olmazsa bütün bu RAM doluyor)
- ekranın 180 dereceye yakın durabiliyor/esnek olması (uzanırken çalışıldığında gerekli) (180 olması şart değil. hatta 180 hiçbir zaman kullanmıyorum. max 165 derece yeterli.)
- klavyesinde aydınlatması (klavyedeki tuşlar yoksa gece görünmüyor)
- tüm kasa sert bir kaplama olmalı (örneğin; çelik gibi). çünkü plastik olunca, cihazın herhangi bir yerine temas edildiğinde cihazın zarar görme ihtimali artıyor (örnek: bavulda sıkıştığında, klavyedeki tuşlara sert basınca donanımın içine temas ediyor olabilir). 
- girişler ve çıkışlar:
  - webcam ve kulaklık jack girişi (ev dışındayken yapılan iş görüşmeleri için)
  - usb-type-c (en az 1 usb portu usb-3 veya üstünü desteklemesi gerekli)
  - DisplayPort (eğer diğer usb-type-c girişi zaten DisplayPort uyumlu ise, bunun ekstra bir giriş olması şart diil) 
  - opsiyonel ama büyük avantaj: 
    - ethernet
    - hdmi
    - thunderbolt
    - usb-type-A (type-c 'ye ek olarak farklı/ekstra giriş olması)
    - girişlerin sayısının fazla olması
    - SD card okuyucu

- yazılımların donanım gereksinimleri my_dotfiles projesinde yazıyor.

- cpu

  - cpu'da fazla sayıda çekirdek olması (cpu-core sayısı fazla olsun ama yavaş olması daha mantıklı)

  - cpu'nun resmi sitesine girip bakmak lazım:
    - directx, opengl'in desteği güncel versiyonlara var mı.
    - "total core" sayısı gerçek çekirdek sayısını yansıtıyor. Intel'in resmi sitesindeki karşılaştırma sayfalarında, "Performance-cores" ve "Efficient-cores" u ayrı ayrı göstermiş olabilir. onların oranı hiç önemli diil. fakat en az 1 adet "Performance-cores" olması şart.
    - detaylı teknik özelliklerinde çok fazla özelliğin olup olmadığına bakılmalı (özellikle virtualization keyword'ü içeren özellikler)

---

# cpu feature compare

https://ark.intel.com/content/www/us/en/ark/compare.html?productIds=208662,226259

---

# Teknik servisler:

* asus - şişli'ye uzakta teknik servisi.

* lenovo - teknik servisi metrocity-avm ve maltepe metro çıkışı.

* dell - eve geliyor.

* HP'nin bi sürü yerde teknik servisi var. en çok bu adamlarda var. ama "HP Bölge Onarım Merkezi" maltepe metro çıkışı yürüme. (burasından herkes aşırı memnun)

---

# Satın alınabilecek yerler

Mümkünse internetten alma ve gidip elle kendin al laptopu.

https://www.kurumsalit.com

https://www.mediamarkt.com.tr/

https://www.vatanbilgisayar.com

https://www.teknosa.com

---
