# FILE PERMISSIONS

for those files:

- personal files,
- portable apps,
- firefox user/config files.

you can set all permissions as:

> sudo chown -R user1:user1 /run/media/user1/internal1

> sudo chmod -R u=rwx,g=,o= /run/media/user1/internal1

Normally "umask" command sets the default permissions of every file we create or update. But I don't prefer to change any config of OS. Therefore run above command manually and periodically.
