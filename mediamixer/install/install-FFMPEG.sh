cd /usr/local/src/
#git clone git://git.videolan.org/ffmpeg.git
git clone https://github.com/FFmpeg/FFmpeg.git ffmpeg
cd /usr/local/src/ffmpeg
git reset --hard c40983a6f631d22fede713d535bb9c31d5c9740c
git show

#
# Compiling FFMPEG
#
 
cd /usr/local/src/ffmpeg
ls configure
./configure --enable-shared --enable-gpl --enable-nonfree --disable-stripping --enable-zlib --enable-avresample --enable-decoder=png
make
make install
cd ..

ldconfig