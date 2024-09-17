#ASITIC
# The ASITIC site is suspendend, so it will used a version from
# 2021 of the site (accessed with Way Back Machine)
echo "Install ASITIC"
#Asitic
sudo apt-get install gcc-multilib -y


mkdir files
cd files
# wget https://web.archive.org/web/20210509072316/http://rfic.eecs.berkeley.edu/~niknejad/Asitic/grackle/asitic_linux.gz
# wget https://web.archive.org/web/20210509072316/http://rfic.eecs.berkeley.edu/~niknejad/Asitic/grackle/doc_05_28_01.tgz
# wget https://web.archive.org/web/20210509072316/http://rfic.eecs.berkeley.edu/~niknejad/Asitic/3.19.00/common.tgz

#gzip -d ../etc/asitic_linux.gz
gzip -d -c ../etc/asitic_linux.gz > ./asitic_linux
tar -xvzf ../etc/doc_05_28_01.tgz 
tar -xvzf ../etc/common.tgz 

chmod +x asitic_linux

sudo dpkg --add-architecture i386
sudo apt-get update
#sudo apt-get install libc6:1386 libncurses5:i386 libstdc++6:i386 -y
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 -y

sudo apt-get install libxtst6:i386 -y

wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/gcc-3.4/libg2c0_3.4.6-6ubuntu5_i386.deb
wget https://launchpad.net/ubuntu/+source/gcc-3.4/3.4.6-6ubuntu5/+build/601913/+files/gcc-3.4-base_3.4.6-6ubuntu5_i386.deb
sudo dpkg -i --force-all libg2c0_3.4.6-6ubuntu5_i386.deb
sudo dpkg -i --force-all gcc-3.4-base_3.4.6-6ubuntu5_i386.deb

cd ../
mkdir tech
cd tech
#echo "Downloading ASITIC .tek file from yrrapt@github repository..."
wget https://raw.githubusercontent.com/yrrapt/inductor-generator/main/asitic/sky130.tek
cd ..

#cp asitic /usr/bin/
#echo "asitic_sky130"
#cp /home/$(whoami)/sky130_workspace/utilities/asitic_sky130 asitic_sky130
#chmod +x asitic_sky130

cd ..
