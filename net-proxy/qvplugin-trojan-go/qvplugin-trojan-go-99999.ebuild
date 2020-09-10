# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils git-r3

DESCRIPTION="Plugin for Qv2ray to support Trojan Go proxy in Qv2ray"
HOMEPAGE="https://github.com/Qv2ray/QvPlugin-Trojan-Go"
EGIT_REPO_URI="${HOMEPAGE}.git"
EGIT_BRANCH=dev

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="
	=net-proxy/qv2ray-99999
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	cmake-utils_src_configure
}

src_install(){
	insinto "/usr/share/qv2ray/plugins"
	insopts -m755
	doins "${BUILD_DIR}/libQvPlugin-TrojanGo.so"
}
