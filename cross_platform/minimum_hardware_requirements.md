# MINIMUM HARDWARE REQUIREMENTS

## note

- `HAXM` is the old generation technology of `VT-x`
- `VT-x` and `VT-d` are different.

## Android Emulator and IDE

- For extra speed with acceleration
  - `Intel` Processors with `Intel Virtualization Technology (VT-x)`
  - `AMD` Processors with `AMD-V` (named also as: `SVM (Secure Virtual Machine`)
  - `Apple` silicon `M1` and `M2` families

- `Second-level address translation (SLAT)`. Named on each brand:
  - for `Intel` --> `EPT`
  - for `AMD` --> `RVI` (named also as: `Nested Page Table (NPT)`)

- If `CPU` is `Intel` then --> "2nd generation Intel Core or newer"
- Screen resolution `1280 x 800`
- `RAM` 16 GB

- `CPU` microarchitecture after 2017.
  - Intel 8th Gen Core i5
  - AMD Zen Ryzen (Examples: Intel i5-8xxx, Ryzen 1xxx)

- Intel Core N-Series and U-Series processors are not recommended

## General notes for Android Emulator acceleration (this is not a requirement)

if accelerated emulator running, you can not:

- run another app which requires virtualization technology.
- run accelerated emulator inside a `VM`.

## Windows 11

- `DirectX` 12 support of `GPU`
- optional (if below not exist manuel action on is required on installation)
  - `UEFI` with `secure boot`
  - `Trusted Platform Module (TPM)` 2.0

## Windows 11 hyper-v

- `Hardware-enforced Data Execution Prevention (DEP)`:
  - For `Intel` --> `XD bit (execute disable bit)`
  - For `AMD` --> `NX bit (no execute bit)`

- `VM Monitor Mode`
  - for `Intel` --> `VMX (Virtual Machine Extensions)` (named also as: `VT-x`)
  - for `AMD` --> `SVM`

- Only for "Discrete device assignment" feature:

  Bu benim kullandığım bir özellik değil, fakat bu başlık altındaki CPU özellikleri normal paylaşımlar içinde kullanılmaktadır.

  Discrete olarak atanacak cihazlar sadece `GPU` ve `NVMe` `SSD`'dir.

  - `Extended Page Table (EPT)` or AMD's `Nested Page Table (NPT)`

  - The chipset must have:

    - `Interrupt remapping`
      - for `Intel`: `VT-d` with the `Interrupt Remapping capability (VT-d2)`
      - for `AMD`: `I/O Memory Management Unit (I/O MMU)`.

    - `DMA remapping`
      - for `Intel`: `VT-d` with `Queued Invalidations`
      - for: `AMD`: `I/O MMU`

    - `Access control services (ACS)` on `PCI Express` root ports.

- Only for `Shielded virtual machines` feature:

  - `UEFI` `2.3.1c`
  - `secure boot`
  - `measured boot`
  - `TPM` `2.0`

## Ubuntu

- 3D Acceleration Capable Video-card with at least 256 MB

## Refresh rate

`HDMI` çıkışı minimum `100+` `Hz` olmalı. Yoksa monitörlerde hiç akıcı göruntu sağlanmıyor.

## API

`OpenGL` min `4.6`

`Directx` min `12.2`
