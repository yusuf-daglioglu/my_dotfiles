# MultiOS-USB

https://github.com/Mexit/MultiOS-USB

Dno not use `Vnetoy` or `MultiOS-USB` until the binary blobs will be removed from their repository.

## USB şeması

İlk partition ve initializer script'i:

```sh
sudo ./multios-usb.sh -f fat32 /dev/sdb 15G
```

Diğer `NTFS` bölümü manuel `Gparted` ile oluşturulmalı

- `FAT32`:
  - `MX` (5GB)
  - `fedora` (also works from `exfat`) (3GB)
  - `tails` (2gb)
  - `gparted` (1GB)

- `NTFS`
  - `windows` 11 (6GB)
  - `ubuntu` (7GB) (in that case it should be ntfs because it did not worked via `exfat`. `fat32` does not work with 7gb.)

## partition

### EXFAT en sonda olmalı

İlerde `EXFAT`'ta çalışması zorunlu `ISO` varsa onun partition'u en sonda olmalı. Çünkü `EXFAT` `Gparted` ile resize edilemiyor. Eğer en sonda olursa partition, silip yeniden resize edebilme şansım var.

### her ISO için ayrı partition

Her `ISO` için ayrı partition yapmanın sorunları:
- Her `ISO` için "`conf`" dosyası düzenlemek gerekli (her güncelleme sonrası).
- Bazı `UEFI`'lerde 3 ve üzeri partition'larda boot sorunu oluşabiliyor.
