
choose:

- if linux OS and its device then choose BTRFS.

  - it is stable because of copy-on-write.
  - exact same (multiple) files does not use any storage. it is good especially when using linux-containers (podman, docker...).
  
  note: do not create submodules for personal-files(&backups) and OS together (for my case i dont use them). each partition should be new GPT or MBR partition. I read many comments, users say btrfs sub-module is complex.
  
- if it is USB drive then choose EXFAT.

  - FAT32 has 4GB file limit. I can not store ISO and VM files.
  - EXFAT is patented. some Linux distos can not read/write via LiveCD.
  - EXFAT is supported only by:
    - Windows Vista Service Pack 1 (release year 2008) and later.
    - macOS 10.6.5 (release year 2011) and later.

- if windows only choose NTFS.

Note:
- On USB drives do not create multiple partition. because before windows 10 it may not work (source: https://superuser.com/questions/400560/windows-7-doesnt-recognize-second-partition-on-removable-disk )
- do not copy more than below value at once if USB is 
  - SSD-style - 3 GB
  - HDD-style - 12 GB
  
  It will slow down and you may interrupt the copy operation (which may break the file-system).
