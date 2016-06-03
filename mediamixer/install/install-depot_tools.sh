cd /usr/local/src/
svn checkout svn://svn.code.sf.net/p/mcumediaserver/code/trunk medooze
#
# Install depot_tools, you shall use an account different than root
#

cd /usr/local/src
svn co https://src.chromium.org/chrome/trunk/tools/depot_tools
export PATH="$PATH":/usr/local/src/depot_tools

cd /usr/local/src/medooze/mcu/ext
/usr/local/src/depot_tools/ninja -C out/Release/ common_audio
