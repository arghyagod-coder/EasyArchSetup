sudo pacman -Syu
sudo pacman -S xorg xorg-server 
sudo pacman -S gnome
paru -S firefox gnome-tweaks
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
sudo systemctl enable gdm.service
sudo systemctl start gdm.service
sudo pacman -S a52de
paru -S pamac-aur
sudo pacman -S p7zip p7zip-plugins unrar tar rsync
sudo reboot