echo "Make sure you have 3 partitions ready for the installation.

One for efi (512MB)
One for swap size (4GB is an ideal choice)
One for root (your system space)

You can do this with tools like CFDISK
"

read -p "Are you ready? (y/n): " OPT
if [ $OPT = "yes" ]; then
  lsblk
  echo ""
  echo "Enter your partition name in the following (for e.g. /dev/sdaXX)"
  echo ""
  read -p "Select Partition for EFI: " EFI
  read -p "Select Partition for swap space: " SWAP 
  read -p "Select Partition for root: " ROOT
  mkfs.ext4 $ROOT 
  mkswap $SWAP
  mkfs.fat -F32 $EFI
  swapon $SWAP
  mount $ROOT /mnt
  mkdir /boot/EFI
  mount $EFI /boot/EFI
elif [ $OPT = "no" ]; then
  exit
else
  echo "Invalid Input"
fi