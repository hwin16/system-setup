# need sudo
mkdir -p ~/downloads

# download boost 1.66
cd ~/downloads
wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.gz
tar zxvf boost_1_66_0.tar.gz
cd boost_1_66_0
./bootstrap.sh --prefix=/opt/lsst
./b2 install

# download yaml-cpp
cd ~/downloads
wget https://github.com/jbeder/yaml-cpp/archive/yaml-cpp-0.5.3.tar.gz
tar zxvf yaml-cpp-0.5.3.tar.gz
cd yaml-cpp-yaml-cpp-0.5.3/
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/lsst -DBOOST_ROOT=/opt/lsst ..
cmake --build . --target install

# download rabbitmq
cd ~/downloads
wget https://github.com/alanxz/rabbitmq-c/releases/download/v0.8.0/rabbitmq-c-0.8.0.tar.gz
tar zxvf rabbitmq-c-0.8.0.tar.gz
cd rabbitmq-c-0.8.0/
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/lsst -DBOOST_ROOT=/opt/lsst ..
cmake --build . --target install

# download SimpleAmqpClient
cd ~/downloads
wget https://github.com/alanxz/SimpleAmqpClient/archive/v2.4.0.tar.gz
tar zxvf v2.4.0.tar.gz
cd SimpleAmqpClient-2.4.0/
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/lsst -DBOOST_ROOT=/opt/lsst ..
cmake --build . --target install

# download cfitsio
cd ~/downloads
wget http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio3450.tar.gz
tar zxvf cfitsio3450.tar.gz
cd cfitsio/
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/lsst -DBOOST_ROOT=/opt/lsst ..
cmake --build . --target install
