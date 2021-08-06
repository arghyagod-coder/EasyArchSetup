sudo pacman -Syu
sudo pacman -S xorg xorg-server 
yay -S firefox
sudo pacman -S xfce4 xfce4-goodies lxdm
sudo systemctl enable lxdm.service
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
sudo pacman -S p7zip p7zip-plugins unrar tar rsync
yay -S pamac-aur
sudo systemctl start lxdm.service