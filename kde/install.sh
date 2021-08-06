pacman -S xorg plasma plasma-wayland-session kde-applications xorg-server 
systemctl enable sddm.service
sudo pacman -Syu
yay -S firefox 
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
# systemctl enable NetworkManager.service
yay -S pamac-aur
sudo pacman -S p7zip p7zip-plugins unrar tar rsync
sudo reboot
