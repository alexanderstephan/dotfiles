**Welcome to my *Arch Linux* Rice,**

in here you can find all the important dotfiles for my rice.

List of noticable Programs:

- urxvt   *Minimal Terminal Emulator with transparency support and a lot of customizability*
- rofi    *Launcher*
- excalibar *Sleek i3bar replacement written in C*
- compton *Desktop compositor*
- Ly *Sleek login manager also written in C*

In order to make the arch/i3 installation process more smooth and efficient I will also provide a brief guide, which is based on a gist I wrote a while ago. Key features of this install are full disk encryption as well as several optimizations for flash drives.

**Warranty Disclaimer:**
I am not responsible for data loss, possible hardware failures, thermonuclear war,
or you getting fired because your arch driven atomic plant failed.

If you have any concerns regarding the installation don't hesitate to do some research
on your own to prevent possible failures or bugs.

After booting the arch iso you'll will have to proceed with the following steps:

- Temporarely load your preferred keyboard layout

`loadkeys de`

- Find out your block device name

`lsblk' or 'lsblk -Sp`

- Create boot and root partition

`parted -a optimal /dev/<devicename> mklabel gpt mkpart primary 0% 257MiB name 1 boot mkpart primary 257MiB 100% name 2 root`

```mkfs.btrfs -L boot /dev/<devicename>1

cryptsetup luksFormat /dev/<devicename>2

cryptsetup open /dev/<devicename>2 root

mkfs.f2fs -l root /dev/mapper/root```
  
- Mount devices

`mount /dev/mapper/root /mnt`
`mkdir /mnt/boot`
`mount <devicename>1 /mnt/boot`

- Install base system

`pacstrap /mnt base base-devel intel-ucode`

- Write fstab (contains all the drives that will be mounted upon booting)

`genfstab -p /mnt > /mnt/etc/fstab`


- Change root envirement to freshly installed base system

`arch-chroot /mnt/`

- Name your machine

`echo myhost > /etc/hostname`

- Locals

`echo LANG=en_US.UTF-8 > /etc/locale.conf`
`nano /etc/locale.gen`
`locale-gen`
`echo KEYMAP=de-latin1 > /etc/vconsole.conf`


- Timezone

`ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime`


- Mirrors

`cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
grep -E -A 1 ".*Germany.*$" /etc/pacman.d/mirrorlist.bak | sed '/--/d' > /etc/pacman.d/mirrorlist`

- Local DNS

`nano /etc/hosts`
  
  `#<ip-address>	<hostname.domain.org>	<hostname>`
  `127.0.0.1	localhost.localdomain	localhost`
  `::1		localhost.localdomain	localhost`
 
- Uncomment [multilib] to add 32-bit support

`nano /etc/pacman.conf`
`pacman -Sy`

- Set root password

`passwd`

- Install syslinux bootloader

`pacman -S gptfdisk syslinux
syslinux-install_update -iam`

- Just keep DEFAULT + LABELS and add "cryptdevice=/dev/nvme0n1p2:root root=/dev/mapper/root rw" after APPEND

`nano /boot/syslinux/syslinux.cfg`

- Add "encrypt" Hook and create kernel image

`nano /etc/mkinitcpio.conf`
`sudo pacman -S f2fs-tools btrfs-progs`
`mkinitcpio -p linux`

- Possibly do a reboot here


