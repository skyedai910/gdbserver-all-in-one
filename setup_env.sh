sudo apt-get update -y
sudo apt-get install libncurs* -y
sudo apt-get install libncurses5-dev patch -y

git clone git@github.com:buildroot/buildroot.git
cd buildroot
make clean