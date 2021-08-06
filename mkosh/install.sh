yay -S rofi awesome-git picom-git inter-font light-git mpd mcd alsa-utils pulseaudio pulseaudio-alsa acpi acpid maim xclip xfce4-power-manager feh nm-applet pnmixer xorg-xinput noto-fonts-emoji upower xdg-user-dirs ffmpeg iw iproute2
mkdir -p $HOME/.config
mkdir -p $HOME/.config/awesome
git clone https://github.com/Mengo-Team/MkOsh
cp -r MkOsh/* $HOME/.config/awesome
mkdir -p ~/.config/rofi
cp $HOME/.config/awesome/configuration/rofi/appmenu/rofi.rasi  ~/.config/rofi/config.rasi
sed -i '/@import/c\@import "'$HOME'/.config/awesome/configuration/rofi/appmenu/rofi.rasi"' ~/.config/rofi/config.rasi
rm -rf MkOsh
yay -S lxdm 
sudo systemctl enable lxdm
sudo systemctl start lxdm