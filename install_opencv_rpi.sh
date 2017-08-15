sudo apt-get -q -y update
sudo apt-get -q -y install build-essential
sudo apt-get -q -y install cmake 
sudo apt-get -q -y install pkg-config 
sudo apt-get -q -y install libpng12-0 libpng12-dev libpng++-dev libpng3 
sudo apt-get -q -y install libpnglite-dev libpngwriter0-dev libpngwriter0c2 
sudo apt-get -q -y install zlib1g-dbg zlib1g zlib1g-dev 
sudo apt-get -q -y install pngtools libtiff4-dev libtiff4 libtiffxx0c2 libtiff-tools 
sudo apt-get -q -y install libjpeg8 libjpeg8-dev libjpeg8-dbg libjpeg-progs 
sudo apt-get -q -y install ffmpeg libavcodec-dev libavcodec52 libavformat52 libavformat-dev 
sudo apt-get -q -y install libgstreamer0.10-0-dbg libgstreamer0.10-0  libgstreamer0.10-dev 
sudo apt-get -q -y install libxine1-ffmpeg  libxine-dev libxine1-bin 
sudo apt-get -q -y install libunicap2 libunicap2-dev 
sudo apt-get -q -y install libdc1394-22-dev libdc1394-22 libdc1394-utils 
sudo apt-get -q -y install swig 
sudo apt-get -q -y install libv4l-0 libv4l-dev 
sudo apt-get -q -y install python-numpy 
sudo apt-get -q -y install libpython2.6 python-dev python2.6-dev 
sudo apt-get -q -y install libpython2.7 python-dev python2.7-dev 
sudo apt-get -q -y install libgtk2.0-dev pkg-config
sudo apt-get -q -y install mplayer
cd ~
wget https://sourceforge.net/projects/opencvlibrary/files/opencv-unix/3.2.0/opencv-3.2.0.zip/download
mv download OpenCV-3.2.0.zip
unzip OpenCV-3.2.0.zip
cd ~/OpenCV-3.2.0/
mkdir release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_PYTHON_SUPPORT=ON -j 4 -D BUILD_EXAMPLES=ON .. 
make
sudo make install 
