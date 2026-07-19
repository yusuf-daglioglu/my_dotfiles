# RANDOM MAC ADDRESS

If you apply any of below config, you should restart the network manager via:

```sh
sudo systemctl restart NetworkManager
```

## MAC randomize (In this case DHCP-server will assign random IPv4 on local network)

Create 2 files:

```sh
sudo gnome-text-editor /etc/NetworkManager/conf.d/99-wifi-mac-addr.conf
```

```text
[connection.99-wifi-mac-addr]
match-device=type:wifi
wifi.cloned-mac-address=random

[device]
wifi.scan-rand-mac-address=yes
```

```sh
sudo gnome-text-editor /etc/NetworkManager/conf.d/99-ethernet-mac-addr.conf
```

```text
[connection.99-ethernet-mac-addr]
match-device=type:ethernet
ethernet.cloned-mac-address=random
```

## IPv6 randomize on local network

Create a file:

```sh
sudo gnome-text-editor /etc/NetworkManager/conf.d/99-random-id.conf
```

with content:

```text
[connection]
connection.stable-id=${RANDOM}
```

From now on each connection restart, `ip -c a` command will print different `IPv6` value on `inet6`.
