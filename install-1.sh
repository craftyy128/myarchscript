#!/bin/bash/

echo "hello dis my first actual project so yea hi me"

sleep 2

echo "OK im assuming youve done the partitioning so we gunna follow the arch install guide k? so lets get somthing straigh /dev/nvme0n1p1 is efi /dev/nvme0n1p2 is root /dev/nvme0n1p3 is swap K?"

sleep 4

#Mount commands

timedatectl

mount /dev/nvme0n1p2 /mnt

mount --mkdir /dev/nvme0n1p1 /mnt/boot

swapon /dev/nvme0n1p3

echo "yay!!! weve mounted the system!!!! now lets install it!"

sleep 2

#Install system

pacstrap -K /mnt base linux linux-firmware sof-firmware intel-ucode firefox nano

echo "alright now lets generate the fstab file!"

#genfstab (why u looking here? well anyways....)

genfstab -U /mnt >> /mnt/etc/fstab

echo "yessir weve done everything we ment to do!!! now just do arch-chroot /mnt to continue




