# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit linux-info linux-mod 

DESCRIPTION="FLI USB kernel module"
HOMEPAGE=""
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/distfiles/fliusb.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}"

MODULE_NAMES="fliusb(misc::)"
BUILD_TARGETS='default'

src_compile() {
#    cd ${S}
    linux-mod_src_compile
}

src_install() {
    linux-mod_src_install
    insinto /lib/udev/rules.d
    doins fliusb.rules
}
