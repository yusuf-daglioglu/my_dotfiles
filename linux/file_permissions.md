for those files:

- personal files, 
- portable apps,
- firefox user/config files.

you can set all permssions as:

> sudo chmod -R u=rwx,g=,o= /run/media/user1/personal_disk_partition_mounted

Normally "umask" command sets the default permissions of every file we create or update. But I don't prefer to change any config of OS. Therefore run above command manually and periodically.
