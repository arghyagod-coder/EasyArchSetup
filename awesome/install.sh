yay -S awesome code nautilus terminator rofi picom i3lock-fancy xclip ttf-roboto polkit-gnome materia-theme lxappearance flameshot pnmixer network-manager-applet xfce4-power-manager qt5-styleplugins papirus-icon-theme -y
git clone https://github.com/ChrisTitusTech/titus-awesome 
mkdir -p ~/.config/awesome
cp -r titus-awesome/* ~/.config/awesome
mkdir -p ~/.config/rofi
cp $HOME/.config/awesome/theme/config.rasi ~/.config/rofi/config.rasi
sed -i '/@import/c\@import "'$HOME'/.config/awesome/theme/sidebar.rasi"' ~/.config/rofi/config.rasi
yay -S lxdm 
sudo systemctl enable lxdm
sudo systemctl start lxdm