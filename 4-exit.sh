umount -l /mnt
read -p "Complete Base Installation done. Reboot? " OPT
if [ $OPT = "yes" ]; then
  reboot
elif [ $OPT = "no" ]; then
  exit
else
  echo "Invalid Input"
fi