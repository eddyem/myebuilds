# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit unpacker

DESCRIPTION="FLY CCD SDK library"
HOMEPAGE="https://www.flir.com/products/flycapture-sdk/"
SRC_URI=""
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/libflycapture-2.13.tgz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-libs/libraw1394"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

#src_unpack() {
#    tar -zxf /home/eddy/Docs/Grasshopper/libflycapture/libflycapture-2.13.tgz
#}

src_install() {
    insinto /
    doins -r usr
}
