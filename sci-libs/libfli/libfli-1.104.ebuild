# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit unpacker

DESCRIPTION="FLI CCD SDK"
HOMEPAGE=""
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/distfiles/libfli-1.104.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="sci-libs/fliusb"
RDEPEND="${DEPEND}"
S="${WORKDIR}/libfli-1.104"

src_install() {
    insinto /usr/local/lib
    doins libfli.a
    insinto /usr/local/include
    doins libfli.h
    insinto /usr/share/pkgconfig
    doins fli.pc
}
