# EasyArchSetup Scripts

Scared installing Arch? No problem! ;) 

These set of scripts will allow you to install arch linux easily, and by that I mean too easily.

## Points to note:

- For now, it only installs the base arch system.
- It only supports UEFI boot
- It ofcourse needs Internet

## How to Use

### Follow this all time!

1. Get an [ArchLinux iso](https://archlinux.org/download/) and make a bootable USB out of it (Use [Etcher](https://etcher.io) to do that)

2. Boot through the iso.

3. When u see tty, first connect to the internet. If you are on ethermnet, it should happen automatically, and if you are on wifi, I'm here to help you with that. But first check if internet is really working. For this, execute:

```
$ ping google.com
```

The output should be executing forever, with something like `64 bytes from del11s13-in-f14.1e100.net (142.250.192.238): icmp_seq=2 ttl=115 time=54.9 ms` repeatedly. To stop this press Ctrl + C and know that your internet is working. 

If the output isnt the same, follow the below guidelines to connect to internet

#### Connecting to wifi:

To get an interactive prompt do:

```
$ iwctl
```

The interactive prompt is then displayed with a prefix of `[iwd]#`.

First, if you do not know your wireless device name, list all Wi-Fi devices:

```
[iwd]# device list
```

Then, to scan for networks:

```
[iwd]# station device scan
```

You can then list all available networks:

```
[iwd]# station device get-networks
```

Finally, to connect to a network:

```
[iwd]# station device connect SSID
```

#### Installing Git and Cloning the repository

```
sudo pacman -Syy
sudo pacman -S git
git clone https://github.com/arghyagod-coder/EasyArchSetup
```

Now perform `ls` to see the contents of current directory, and you will see a folder named EasyArchSetup.

Change Directory
```
cd EasyArchSetup
```

#### The Scripts:

##### Setup Keyboard Layout

As it is indexed, there are 5 scripts, indexed from 0-4. That's the order they are executed in. 

The [0-setup.sh](/0-setup.sh) script is only to be executed if you want a keyboard layout other than US

```
bash 0-setup.sh
```

Personally I don't feel you will need this script many of times, as most are happy with US keyboard layout.

##### Partitioning

Now, before the script number 1, you need to do some partitioning, nothing to be scared!

```
cfdisk
```

This is an inbuilt tool in Arch ISO which will help you partition the drives. On executing the above command you will get your partition table kinda like this:

![](https://media.geeksforgeeks.org/wp-content/uploads/20190221160330/lab1.png)

Choose GPT

![](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F8%2F85%2FCfdisk_screenshot.png%2F414px-Cfdisk_screenshot.png&f=1&nofb=1)

You will get something like this, where your free space would be located. If you are completely installing arch on your system but have existing partitions, just use the up and down arrow keys to select the partitions and left and right arrow keys to reach the Delete option. Then press Enter and the partition will be deleted. Do the same with other partitions, till you have free space in which you would like to install the system.

Now select the Free Space and use the `New` Option to create a partition. It will ask for size. After making the partition there will be a `Type` option to choose the type

Use the following partition table for reference (the partition names are not compulsory to be put in following order)

| Partition      | Size         | Type         |
| :------------- | :----------: | -----------: |
|  /dev/sda1     | 512M         | EFI System   |
| /dev/sda2      | Swap Storage / VRAM (ideally 4G) | Linux Swap |
| /dev/sda3      | Rest of free space left | Linux Filesystem |

Then use the `Write` option to write the changes in disk. Quit out of cfdisk with Quit option after that

##### Disk Formatting

Now the second script comes handy! It's the [1-disk_setup.sh](/1-disk_setup.sh) file. It will prompt you for a notice if you havent already made the partitions. Type `yes` and proceed. It will prompt you for 3 partitions, EFI, swap and root. EFI is the partition you had given 512M to in cfdisk, swap is the Linux Swap partition and the root is the Linux Filesystem partition. For my case I would give:

```
Select Partition for EFI: /dev/sda1

Select Partition for Swap Space: /dev/sda2

Select Partition for root: /dev/sda3
```

Rest it would do by itself.

##### Base Install

Now the base installation. Run the [base install script](/2-base_install.sh). And activate the DO NOTHING MODE. The system will automatically install all you need.

##### Post-Install

This is a crucial part, as Arch is more of configuring than installing. Use the [script 3](/3-post-base.sh) to do this.

First it will tell you to ask for your timezone. It will even show some timezones. You should know your timezone. If its of India, the timezone is in Kolkata. Hence the timezone is Asia/Kolkata. You can research a bit about this thing.

Then it asks for computer name and username. Also passwords of each

Thats it! Its done. Now execute `exit` to get out of chroot and execute the exit script. The system will reboot and you will be done! 

##### Setup your desktop!

Ok, so you have installed base arch. But after that? Scared to install stuff one by one. Cm'on les help you

###### GNOME:

```
bash gnome/install.sh
```

###### KDE:

```
bash kde/install.sh
```

###### GNOME:

```
bash gnome/install.sh
```

###### XFCE:

```
bash xfce/install.sh
```

###### LXDE:

```
bash lxde/install.sh
```

###### MATE:

```
bash mate/install.sh
```

###### AwesomeWM:

```
bash awesome/install.sh
```

###### MkOsh:

```
bash mkosh/install.sh
```
##### That's it, far easier!

## Special Notes

- Contribution is appreciated! 
- If you have any issues, Mail me at arghyasarkar.nolan@gmail.com
- Thanks for seeing my project!