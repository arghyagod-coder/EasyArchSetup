sudo pacman -Syu
sudo pacman -S xorg xorg-server 
paru -S firefox
sudo pacman -S xfce4 xfce4-goodies lightdm
sudo systemctl enable lightdm.service
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
sudo pacman -S p7zip p7zip-plugins unrar tar rsync
paru -S pamac-aur
sudo systemctl start lightdm.service