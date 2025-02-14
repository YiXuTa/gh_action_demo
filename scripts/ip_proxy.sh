set -uex

date
# 只有内网地址
hostname -I
pwd

curl ifconfig.me

soft1="tinyproxy-1.11.2"
tar xf $soft1.tar.xz
ls -alh
cd $soft1
./configure
make
make install
whereis tinyproxy
echo "Done!"

