# Shell scripts

## path search

```sh
printf "%s" "$PATH" | tr ':' '\n' | grep "" -i | color_line
```

## open TCP server which replays a string

-l --> creates server connection

-n --> do not lookup DNS

-v --> verbose output

```sh
printf '%s' "TEXT TO SHARE" | nc -n -v -l PORT_NUMBER; c_notify_user 2 "server closed"
```

## port details

```sh
ss --all --processes --tcp --udp | color_line

netstat -p -u -t -a | color_line
```

# kill all processes by port number

-t --> show only process ID

-i --> show only internet connections related process

-9 --> kill forcefully

```sh
kill -9 $(lsof -t -i:PORT_NUMBER)
```sh