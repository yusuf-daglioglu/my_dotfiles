# FILE PERMISSIONS

Normally "umask" command sets the default permissions of every file we create or update. But I don't prefer to change any config of OS. Therefore run below commands manually and periodically.

- personal files
- firefox profile files

```sh
sudo find /run/media/user1/internal1 -type d -exec chown user1:user1 {} \;
sudo find /run/media/user1/internal1 -type d -exec chmod u=rwx,g=,o= {} \;

sudo find /run/media/user1/internal1 -type f -exec chown user1:user1 {} \;
sudo find /run/media/user1/internal1 -type f -exec chmod u=rwx,g=,o= {} \;
```

- for portable apps

# TODO remove write permission from below only

```sh
sudo find /home/user1/starship-x86_64-unknown-linux-gnu -type d -exec chown user1:user1 {} \;
sudo find /home/user1/starship-x86_64-unknown-linux-gnu -type d -exec chmod u=rwx,g=,o= {} \;

sudo find /home/user1/starship-x86_64-unknown-linux-gnu -type f -exec chown user1:user1 {} \;
sudo find /home/user1/starship-x86_64-unknown-linux-gnu -type f -exec chmod u=rwx,g=,o= {} \;

sudo find /run/media/user1/internal1/extracted_apps -type d -exec chown user1:user1 {} \;
sudo find /run/media/user1/internal1/extracted_apps -type d -exec chmod u=rwx,g=,o= {} \;

sudo find /run/media/user1/internal1/extracted_apps -type f -exec chown user1:user1 {} \;
sudo find /run/media/user1/internal1/extracted_apps -type f -exec chmod u=rwx,g=,o= {} \;
```