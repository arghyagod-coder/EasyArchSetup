echo ""
echo "Set your timezone"
echo ""
ls /usr/share/zoneinfo/
echo ""
echo "Africa:"
echo ""
ls /usr/share/zoneinfo/Africa
echo ""
echo "America:"
echo ""
ls /usr/share/zoneinfo/America
echo ""
echo "Antartica:"
echo ""
ls /usr/share/zoneinfo/Antartica
echo ""
echo "Arctic:"
echo ""
ls /usr/share/zoneinfo/Arctic 
echo ""
echo "Asia:"
echo ""
ls /usr/share/zoneinfo/Asia
echo ""
echo "Atlantic:"
echo ""
ls /usr/share/zoneinfo/Atlantic
echo ""
echo "Europe:"
echo ""
ls /usr/share/zoneinfo/Europe
echo ""
echo "Canada:"
echo ""
ls /usr/share/zoneinfo/Canada
echo ""
read -p "Enter your timezone (For e.g. Asia/Kolkata or US/Eastern): " TMZ
ln -sf /usr/share/zoneinfo/$TMZ /etc/localtime
hwclock --systohc
pacman -Sy
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
touch /etc/locale.conf
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "KEYMAP=US" > /etc/vconsole.conf
read -p "Enter the computer name: " HOSTN
read -p "Enter the user name: " USER
echo $HOSTN > /etc/hostname
echo "127.0.0.1	localhost
::1		localhost
127.0.1.1	$HOSTN.localdomain	$HOSTN
" > /etc/hosts
passwd 
useradd -m $USER
passwd $USER
usermod -aG wheel,audio,video,optical,storage $USER
pacman -S sudo -y
echo "%wheel ALL = (ALL) ALL" >> /etc/sudoers
pacman -S efibootmgr os-prober dosfstools mtools grub -y
grub-install --target=x86_64-efi --efi-directory=/efi/  --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S networkmanager -y
pacman -S git nano -y
pacman -S --needed base-devel -y
systemctl enable NetworkManager

echo "POST SETUP COMPLETE! NOW EXIT CHROOT AND EXECUTE THE 4-exit.sh FILE"