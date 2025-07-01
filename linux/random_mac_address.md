# README FIRST

If you apply any of below config, you should restart the network manager via:

> sudo systemctl restart NetworkManager

# MAC randomize (In this case DHCP-server will assign random IPv4 on local network)

Solution-2 worked on updated Fedora. The solution-1 works on old versions. But I'm not sure if it is a bug or it depends on a config. Therefore I don't delete the old sulution.

# SOLUTION 1

```sh
sudo gnome-text-editor /etc/NetworkManager/conf.d/00-macrandomize.conf
```

```
[device]
wifi.scan-rand-mac-address=yes

[connection]
wifi.cloned-mac-address=random
ethernet.cloned-mac-address=random
```

# SOLUTION 2

Create 2 files:

> /etc/NetworkManager/conf.d/99-wifi-mac-addr.conf

```
[connection.99-wifi-mac-addr]
match-device=type:wifi
wifi.cloned-mac-address=random
```

> /etc/NetworkManager/conf.d/99-ethernet-mac-addr.conf

```
[connection.99-ethernet-mac-addr]
match-device=type:ethernet
ethernet.cloned-mac-address=random
```

# IPv6 randomize on local network

Create a file:

> /etc/NetworkManager/conf.d/99-random-id.conf

with content:

```
[connection]
connection.stable-id=${RANDOM}
```

From now on each connection restart, "ip -c a" command will print different IPv6 value on "inet6".
