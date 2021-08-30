pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
mkdir /mnt/rsc
cp -r ./* /mnt/rsc
arch-chroot /mnt
