FROM ubuntu:16.04

MAINTAINER cftang0827

RUN apt-get update -y
RUN apt-get install build-essential cmake pkg-config -y
RUN apt-get install libsm-dev libxrender1 libxext-dev libgif-dev -y
RUN apt-get install git -y
RUN apt-get install wget -y
RUN wget https://repo.continuum.io/miniconda/Miniconda3-4.5.1-Linux-x86_64.sh
RUN chmod +x Miniconda3-4.5.1-Linux-x86_64.sh
RUN bash ./Miniconda3-4.5.1-Linux-x86_64.sh -b -p "$HOME/miniconda3"
RUN printf '%s\n' 'export PATH="'$HOME'/miniconda3/bin:$PATH"' >> $HOME/.bashrc
RUN bash --login
RUN export PATH="$HOME/miniconda3/bin:$PATH"
RUN /root/miniconda3/bin/pip install --upgrade pip
RUN /root/miniconda3/bin/pip install --user mkl intel-openmp opencv-python boto3 requests wget numpy scipy scikit-image scikit-learn redis pymysql flask imageio h5py keras tornado tensorflow slacker setuptools pillow
ADD [ "dlib-19.15.99-cp36-cp36m-linux_x86_64.whl", "/root"]
RUN /root/miniconda3/bin/pip install /root/dlib-19.15.99-cp36-cp36m-linux_x86_64.whl
RUN /root/miniconda3/bin/pip face_recognition 


CMD ["python", "-c", "import cv2; print(cv2.__version__); import face_recognition as fr; print(fr.__version__); import tensorflow as tf; print(tf.__version__)"]