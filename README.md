# python-computer-vision-env_install
The shell script of environment installation of Python3 in Ubuntu 16.04, including opencv, dlib, face_recognition ...etc

The one-click installation bash script to install Miniconda, dlib, face_recognition, scikit-learn, scikit-image, opencv...
And a verification script to check whether the environment is well installed. 

```
cd pc
bash install.sh
```

and after the installation, you may want to check environment

```
python test.py
```

If you face the problem that cannot import package correctly, you can check your ~/.bashrc

Be careful the path of pip and python is the same, or you may face the mistake that cannot find package in your python. For example, you can use 
```
which pip 
```
and 
```
which python
```
to check whether there are in same path. If not, please check your ~/.bashrc

-----------------------------------------------------------------

If you face the permission error when using pip install, you can use --user flag to solve the problem. 
Please DO NOT use root to install python package. 

