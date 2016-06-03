mkdir -p /usr/local/src
cd /usr/local/src
#git clone git://git.videolan.org/x264.git
git clone http://git.videolan.org/git/x264.git

#
# Compiling X264
#
 
cd /usr/local/src/x264
./configure --enable-debug --enable-shared --enable-pic
make
make install
cd ..
ldconfig
