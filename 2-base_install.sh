pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
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
sudo pacman -Sy
echo "Base Install Complete!"