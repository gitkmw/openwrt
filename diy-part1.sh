#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# add luci-plugins
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
#sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default

# luci-theme-argon for 18.06 by jerrykuku
#rm -rf luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon
