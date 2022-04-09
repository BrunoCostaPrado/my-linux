# download kernel
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.17.2.tar.xz
#un xz
unxz -v linux-5.17.2.tar.xz
#un tar
tar xvf linux-5.17.2.tar.xz
#cd linux
cd linux-5.17.2.tar.xz
#copy config file
cp -v /boot/config-$(uname -r) .config
#install GCC
sudo apt-get install build-essential libncurses-dev bison flex libssl-dev libelf-dev
#make menu
make menuconfig
#erro correction
scripts/config --disable SYSTEM_REVOCATION_KEYS
scripts/config --disable SYSTEM_TRUSTED_KEYS
#make kernal
make -j4
#make modules
sudo make modules
#install modules
sudo make modules_install
#install kernal
sudo make install

#update grup
sudo update-initramfs -c -k 5.16.9
sudo update-grub