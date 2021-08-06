umount -l /mnt
read -p "Complete Base Installation done. Reboot? (y/n)" OPT
if [ $OPT = "y" ]; then
  reboot
elif [ $OPT = "n" ]; then
  exit
else
  echo "Invalid Input"
fi