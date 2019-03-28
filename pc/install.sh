# basic lib install 
printf '\n'
printf '================ Install essential toolkit via apt-get install ================\n'
sudo rm /var/lib/apt/lists/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo apt-get update
sudo apt-get install build-essential cmake pkg-config -y
sudo apt-get install libsm-dev libxrender1 libxext-dev libgif-dev -y
sudo apt-get install git wget -y


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
pip install --user opencv-python boto3 requests wget numpy scipy scikit-image scikit-learn redis pymysql flask imageio h5py keras tornado tensorflow slacker setuptools pillow
conda install ipython -y
conda install mkl intel-openmp --no-deps -y


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