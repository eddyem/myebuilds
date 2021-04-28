# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Simple Grasshopper CCD management tool"
HOMEPAGE="https://github.com/eddyem/pointgreycam"
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/grasshopper-0.2.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	sci-libs/libflycapture
	media-libs/freeglut
	sci-libs/cfitsio
	dev-libs/libusb
	"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

#src_unpack() {
#    tar -zxf /home/eddy/Docs/Grasshopper/libflycapture/grasshopper-0.1.tgz
#}

src_install() {
    dobin grasshopper
}
