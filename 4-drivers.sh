yay -S xf86-input-libinput xf86-input-synaptics xf86-input-libinput xf86-input-libinput xorg-xinput 
read -p "Is your processor of AMD (a) or Intel (i)?" OPT
if [ $OPT = "i" ]; then
  yay -S intel-ucode
elif [ $OPT = "a" ]; then
  yay -S amd-ucode
else
  echo "Invalid Input"
fi
read -p "Are your video drivers by AMD (a), Intel (i), Nvidia (n) or VirtualBox (v)?" OPTT
if [ $OPTT = "i" ]; then
  yay -S xf86-video-intel
elif [ $OPTT = "n" ]; then
  yay -S nvidia nvidia-390xx
elif [ $OPTT = "v" ]; then
  yay -S virtualbox-guest-utils 
  yay -S xf86-video-vmware
elif [ $OPTT = "a" ]; then
  yay -S xf86-video-amdgpu
else
  echo "Invalid Input"
fi
yay -S pulseaudio pulseaudio-alsa alsa-utils pulseaudio-bluetooth alsa-plugins
