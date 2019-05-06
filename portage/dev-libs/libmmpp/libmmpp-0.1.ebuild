# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="MMPP control library"
HOMEPAGE="https://github.com/eddyem/mmpp/tree/master/MMPP_lib"
SRC_URI="https://github.com/eddyem/myebuilds/raw/master/distfiles/MMPP_lib.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug examples"

S="${WORKDIR}/MMPP_lib"

CMAKE_USE_DIR="${S}"
BUILD_DIR=${S} 

DEPEND="
	virtual/pkgconfig
	virtual/libudev
	virtual/libusb
"
RDEPEND="${DEPEND}"

src_configure() {
    local mycmakeargs=(
    "-DDEBUG=$(usex debug)"
    "-DEXAMPLES=$(usex examples)"
    )
    cmake-utils_src_configure
}
