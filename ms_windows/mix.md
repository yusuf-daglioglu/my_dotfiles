# portable apps

portableapps.com

# scripts (like disable auto updates, disable one-drive)

https://github.com/undergroundwires/privacy.sexy

# enable border on windows

1. settings -> personalization --> colors --> enable all choices below "show accent color on the following surfaces".

2. on the same window, "windows colors" should be selected as red (best one - tested).

# mouse color

1. settings -> ease of access -> mouse pointer --> select "inverted" (inverted makes opposite of black or white depending on the pointers area) or "custom" (choose any color).

2. on the same window increase the "pointer size".

# always show scroll bar
settings -> ease of access -> display --> set off "automatically hide scroll bars in Windows".

# mount USB device read-only
tested on Windows 10 only.

open "regedit".

go here or create it:

> HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies

Create new entry:

> WriteProtect

> Dword (32-bit)

> value: 1

Then mount the USB device.

# add shortcut for microphone settings

create a "bat" file and type this content:

> start ms-settings:privacy-microphone
