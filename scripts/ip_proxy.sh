set -uex

date
# 只有内网地址
hostname -I
pwd
USERPWD=""


curl ifconfig.me

soft1="tinyproxy-1.11.2"
tar xf $soft1.tar.xz
ls -alh
cd $soft1
./configure
echo $USERPWD | sudo -S make
echo $USERPWD | sudo -S make install
whereis tinyproxy
echo "Done!"

