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
pacman -S sudo
echo "%wheel ALL = (ALL) ALL" >> /etc/sudoers.tmp
sudo pacman -S efibootmgr os-prober dosfstools mtools
grub-install --target=x86_64-efi  --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S networkmanager
systemctl enable NetworkManager
exit
umount -l /mnt
read -p "Complete Base Installation done. Reboot? " OPT
if [ $OPT = "yes" ]; then
  reboot
elif [ $OPT = "no" ]; then
  exit
else
  echo "Invalid Input"
fi