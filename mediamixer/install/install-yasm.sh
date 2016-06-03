mkdir -p /usr/local/src
cd /usr/local/src
wget http://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz
tar xvzf yasm-1.2.0.tar.gz

#
# Compiling yasm 1.2
#
cd /usr/local/src/yasm-1.2.0
./configure
make
make install
cd ..
 
