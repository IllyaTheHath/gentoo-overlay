# Gentoo Overlay
Chiyuki's Personal Gentoo Linux Overlay

个人使用的overlay


## 使用方法
```
sudo touch /etc/portage/repos.conf/chiyuki-overlay

cat << EOF | sudo tee -a /etc/portage/repos.conf/chiyuki-overlay
[chiyuki-overlay]
location = /var/db/repos/chiyuki-overlay
sync-type = git
sync-uri = https://github.com/IllyaTheHath/gentoo-overlay
EOF

sudo emerge --sync chiyuki-overlay
```

---

以下包是从其他overlay中fork过来的
- qqmusic: [ryans](https://github.com/gentoo-mirror/ryans/tree/master/media-sound/qqmusic-bin)

