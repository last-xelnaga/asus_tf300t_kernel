#!/bin/bash

#sudo dd if=boot.blob of=/dev/block/mmcblk0p4
sudo mount /dev/mmcblk0p1 /home/ubuntu/temp/
ls -al /home/ubuntu/temp/package.zip
sudo cp -a package.zip /home/ubuntu/temp/
sync
ls -al /home/ubuntu/temp/package.zip
sleep 10s
sudo umount /home/ubuntu/temp/ #/dev/mmcblk0p1
#sudo reboot
