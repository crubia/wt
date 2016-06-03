mkdir -p /usr/local/src
cd /usr/local/src
wget http://downloads.sourceforge.net/project/xmlrpc-c/Xmlrpc-c%20Super%20Stable/1.16.35/xmlrpc-c-1.16.35.tgz
tar xvzf xmlrpc-c-1.16.35.tgz

#
# Compiling XMLRPC-C
#
 
cd /usr/local/src/xmlrpc-c-1.16.35
./configure
make
make install
cd ..