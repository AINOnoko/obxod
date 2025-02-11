rm /etc/systemd/resolved.conf
        chattr -i /etc/resolv.conf
        rm /etc/resolv.conf
        systemctl enable systemd-resolved.service
        systemctl start systemd-resolved.service
        systemctl restart NetworkManager.service
        systemctl disable dnscrypt-proxy.service
        systemctl stop dnscrypt-proxy.service
