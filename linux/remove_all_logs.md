# REMOVE ALL LOGS

## remove all logs (UBUNTU & FEDORA)

```sh
sudo truncate -s 0 /var/log/*log
```

## only return total size of log (FEDORA)

```sh
sudo journalctl --disk-usage
```

## remove all old logs (it does not remove some latest minutes) (FEDORA)

```sh
sudo journalctl --vacuum-time=1s
```
