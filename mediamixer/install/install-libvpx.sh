mkdir -p /usr/local/src
cd /usr/local/src
git clone https://chromium.googlesource.com/webm/libvpx




#
# Compiling libpvx 
#
 
cd /usr/local/src/libvpx
./configure --enable-shared --as=yasm
make
make install

