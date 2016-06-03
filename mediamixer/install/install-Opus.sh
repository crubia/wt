cd /usr/local/src/
wget http://downloads.xiph.org/releases/opus/opus-1.0.2.tar.gz
tar xvzf opus-1.0.2.tar.gz

#
# Compiling Opus
#
 
cd /usr/local/src/opus-1.0.2
./configure
make
make install


