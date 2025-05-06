# Minimum requirements

## Android Emulator
https://developer.android.com/studio/run/emulator#requirements
- 16 GB RAM
- 64-bit OS
- For extra speed with acceleration
  
  https://developer.android.com/studio/run/emulator-acceleration

  - Intel Processors with Intel Virtualization Technology (VT-x) (HAXM is the old generation technology of VT-d)
  - AMD Processors with AMD-V (SVM)
  - Apple silicon M1 and M2 families

- Second-level address translation (SLAT). Named on each brand:
  - for Intel --> EPT
  - for AMD --> RVI

## General notes for Android Emulator acceleration (this is not requirement)
if accelerated emulator running, you can not:
  - run another app which requires virtualization technology.
  - run accelerated emulator inside a VM.

## Windows 11
https://support.microsoft.com/en-us/windows/windows-11-system-requirements-86c11283-ea52-4782-9efd-7674389a7ba3

- DirectX 12 support of GPU
- optional (requires manuel action on installation)
  - UEFI with secure boot
  - Trusted Platform Module (TPM) version 2.0

## Windows 11 hyper-v
https://learn.microsoft.com/en-us/windows-server/virtualization/hyper-v/system-requirements-for-hyper-v-on-windows

- Hardware-enforced Data Execution Prevention (DEP)

  Name for each brand:
  - For Intel --> XD bit (execute disable bit).
  - For AMD --> NX bit (no execute bit).

- Only for SR-IOV feature: 

  - Extended Page Table (EPT) or AMD's Nested Page Table (NPT)

  - The chipset must have:

    - Interrupt remapping - Intel's VT-d with the Interrupt Remapping capability (VT-d2) or any version of AMD I/O Memory Management Unit (I/O MMU).

      (HAXM is the old generation technology of VT-d)

    - DMA remapping - Intel's VT-d with Queued Invalidations or any AMD I/O MMU.

    - Access control services (ACS) on PCI Express root ports.

- Only for Shielded virtual machines feature:

  - UEFI 2.3.1c
  - TPM v2.0
  - IOMMU (Intel VT-D)

## Android Studio
https://developer.android.com/studio/install
- 64-bit OS
- CPU with Hypervisor (name for each brand: For Intel: VT-x & for AMD AMD-V)
- If CPU is Intel then --> "2nd generation Intel Core or newer"
- Screen resolution 1280 x 800

## Ubuntu
https://help.ubuntu.com/community/Installation/SystemRequirements
- 3D Acceleration Capable Videocard with at least 256 MB

## AI development
- Requirements:
  - Advanced Vector Extensions (AVX) source: https://www.nv5geospatialsoftware.com/docs/deep_learning_SystemRequirements.html
  - AVX2 source: https://github.com/nomic-ai/gpt4all?ref=itsfoss.com

- other random keywords:
  - AVX-512 writes (Instruction Set Extensions)

- not required (source: https://mmmake.com/en/blog/hardware-for-machine-learning-the-5-best-hardware-options-in-comparison/ )
  - Intel Scalable Processors (Sapphire Rapids)
  - Intel AMX (Advanced Matrix Extensions)
  - Deep Learning Boost (DL Boost)
