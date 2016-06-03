mkdir -p /usr/local/src
cd /usr/local/src
wget http://downloads.xiph.org/releases/speex/speex-1.2rc1.tar.gz
tar xvzf speex-1.2rc1.tar.gz

#
# Compiling Speex
#
 
cd /usr/local/src/speex-1.2rc1
./configure
make
make install

