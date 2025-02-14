set -uex

date
# 只有内网地址
hostname -I
pwd

curl ifconfig.me

tar xf tinyproxy-1.11.2.tar.xz
ls -alh
cd tinyproxy*
ls -alh


echo "Done!"

