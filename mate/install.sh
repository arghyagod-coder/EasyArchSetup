sudo pacman -Syu
sudo pacman -S xorg xorg-server 
paru -S firefox
paru -S mate mate-tweak mate-extra
sudo systemctl enable lxdm.service
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
sudo pacman -S p7zip p7zip-plugins unrar tar rsync
paru -S pamac-aur
sudo systemctl start lxdm.service