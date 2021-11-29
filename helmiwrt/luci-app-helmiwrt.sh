#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: Helmi Amirudin
# Blog: https://helmiau.com
#=================================================

cd /home/build/openwrt

sudo chown -R build:build ./bin
ls -alh ./bin

echo 'BUILD START'

make defconfig
if [[ "$?" != "0" ]]; then
    exit $?
fi

./scripts/feeds update && ./scripts/feeds install libpthread libopenssl
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-libernet/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-libernet-bin/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-libernet-plus/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-mikhmon/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-openspeedtest/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-shutdown/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-tinyfm/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-v2raya/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-xderm-bin/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-xderm/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-xderm-limit/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-freevpnsite/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

make package/luci-app-wegare/compile V=s
if [[ "$?" != "0" ]]; then
    exit $?
fi

