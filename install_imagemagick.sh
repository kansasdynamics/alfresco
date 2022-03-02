#!/bin/bash
# Install ImageMagick for Alfresco
sudo yum update && upgrade -y
sudo yum install epel-release -y
sudo yum install git
git clone https://github.com/ImageMagick/ImageMagick.git ImageMagick-7.1.0
cd ImageMagick-7.1.0
sudo yum groupinstall "Development Tools"
sudo yum install pkgconfig
./configure
make
sudo make install
sudo ldconfig /usr/local/lib
/usr/local/bin/convert logo: logo.gif
make check
