sudo mount /dev/mmcblk1 /home/SD
sudo mount -o remount,symfollow -o exec,dev /home/SD/
sudo mount -o remount,symfollow -o exec,dev /tmp    
sudo mount -o remount,symfollow -o exec,dev /var/run
sudo mount -o remount,symfollow -o exec,dev /usr/local
