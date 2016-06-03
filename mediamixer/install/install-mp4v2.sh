mkdir -p /usr/local/src
cd /usr/local/src
#svn checkout http://mp4v2.googlecode.com/svn/trunk/ mp4v2
git clone https://github.com/TechSmith/mp4v2.git mp4v2

#
# Compiling mp4v2
# 
cd /usr/local/src/mp4v2
autoreconf -fiv
./configure
make
make install