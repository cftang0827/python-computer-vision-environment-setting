sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential cmake pkg-config -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libgtk2.0-dev libgtk-3-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install cmake -y
sudo apt-get install libhdf5-serial-dev -y
sudo apt-get install libhdf5-dev -y
sudo apt-get install -y libqtgui4
sudo apt install libqt4-test -y


sudo apt-get install default-jdk ant -y
sudo apt-get install libgtk2.0-dev libgstreamer0.10-0-dbg libgstreamer0.10-0 libgstreamer0.10-dev libv4l-0 libv4l-dev -y
sudo apt-get install libgtkglext1-dev -y


sudo apt install unzip -y

sudo apt install openexr -y
sudo apt-get install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools -y

wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py


sudo pip3 install numpy ipython -i https://www.piwheels.org/simple
sudo pip3 install scipy dlib face_recognition -i https://www.piwheels.org/simple

sudo pip3 install opencv-python -i https://www.piwheels.org/simple
sudo pip3 install opencv-contrib-python -i https://www.piwheels.org/simple
sudo pip3 install opencv-utils -i https://www.piwheels.org/simple

sudo pip3 install tensorflow -i https://www.piwheels.org/simple
wget https://www.piwheels.org/simple/PyYAML/PyYAML-3.13b1-cp35-cp35m-linux_armv7l.whl#sha256=073b7b9d18e0c8cb885a743e4d01c248a9d688a1abde8fa002fd21bd04084960
sudo pip3 install wget https://www.piwheels.org/simple/PyYAML/PyYAML-3.13b1-cp35-cp35m-linux_armv7l.whl#sha256=073b7b9d18e0c8cb885a743e4d01c248a9d688a1abde8fa002fd21bd04084961

sudo pip3 install keras -i https://www.piwheels.org/simple



cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.4.0.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.4.0.zip
unzip opencv.zip
unzip opencv_contrib.zip
cd ~/opencv-3.4.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_C_EXAMPLES=OFF \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.0/modules \
    -D BUILD_EXAMPLES=ON \
    -D ENABLE_NEON=ON ..

sudo make -j3 


#https://github.com/Tes3awy/OpenCV-3.2.0-Compiling-on-Raspberry-Pi




