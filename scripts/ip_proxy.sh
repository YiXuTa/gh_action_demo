set -uex

date
# 只有内网地址
hostname -I

cwd=$(pwd)

# root default empty password
PASSWORD=""


#soft1="tinyproxy-1.11.2"
#tar xf $soft1.tar.xz
#ls -alh
#cd $soft1
#./configure
#echo "$PASSWORD" | sudo -S make
#echo "$PASSWORD" | sudo -S make install
#whereis tinyproxy
#curl ifconfig.me
#tinyproxy -d -c "$cwd"/tinyproxy.conf

echo "Done!"

