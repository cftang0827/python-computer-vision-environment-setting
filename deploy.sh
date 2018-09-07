# basic lib install 
printf '\n'
printf '================ Install essential toolkit via apt-get install ================\n'
sudo rm /var/lib/apt/lists/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo apt-get update
sudo apt-get install -f 
sudo apt-get install build-essential gcc g++ -y
sudo apt-get install build-essential cmake -y
sudo apt-get install libgtk-3-dev -y
sudo apt-get install libboost-all-dev -y
sudo apt-get install build-essential cmake pkg-config -y
sudo apt-get install libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install libopenblas-dev -y 
sudo apt-get install liblapack3
sudo apt-get install git -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-4.9 -y
sudo apt-get upgrade libstdc++6 -y


# miniconda
printf '================ Install Miniconda3 for Python ================\n'
sudo rm -r mini*
sudo rm Mini*


wget https://repo.continuum.io/miniconda/Miniconda3-4.5.1-Linux-x86_64.sh
chmod +x Miniconda3-4.5.1-Linux-x86_64.sh
bash ./Miniconda3-4.5.1-Linux-x86_64.sh -b -p "$HOME/miniconda3"
printf '%s\n' 'export PATH="'$HOME'/miniconda3/bin:$PATH"' >> $HOME/.bashrc
export PATH="$HOME/miniconda3/bin:$PATH"

printf '================ Install Python lib ================\n'
#conda update -n base conda -y
pip install --upgrade pip
pip install --user wget 
pip install --user  numpy scipy scikit-image scikit-learn redis pymysql flask imageio h5py keras tornado tensorflow slacker setuptools pillow
pip install --user boto3 requests
pip install --user logmatic-python
conda install ipython -y
conda install -c conda-forge opencv
# conda install -c menpo opencv -y
conda install mkl -y
# pip install --user colorama 
# conda install pytorch-cpu torchvision -c pytorch -y


# build dlib from source 
printf '================ Install DLIB lib ================\n'
git clone https://github.com/davisking/dlib.git
cd dlib
mkdir build
cd build
cmake .. -DDLIB_USE_CUDA=0 -DUSE_AVX_INSTRUCTIONS=1
cmake --build .
cd ..
python setup.py install 
pip install --user face_recognition 
cd ..