#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# Clone community packages to package/community
mkdir package/community
pushd package/community

# HelmiWrt packages
git clone --depth=1 https://github.com/helmiau/helmiwrt-packages
popd
