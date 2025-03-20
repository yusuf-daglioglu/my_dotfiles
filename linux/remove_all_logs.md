# remove all logs (UBUNTU & FEDORA)
sudo truncate -s 0 /var/log/*log

# only return total size of log (FEDORA)
sudo journalctl --disk-usage

# remove all old logs (it does not remove some latest minutes) (FEDORA)
sudo journalctl --vacuum-time=1s
