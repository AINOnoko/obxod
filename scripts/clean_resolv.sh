chattr -i /etc/resolv.conf
rm /etc/resolv.conf
systemctl restart NetworkManager.service
