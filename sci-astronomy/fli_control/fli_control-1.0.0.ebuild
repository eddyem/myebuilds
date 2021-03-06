# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Simple FLI CCD, focuser and filter wheel management tool"
HOMEPAGE="https://github.com/eddyem/mytakepic/tree/master/fli_control"
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/fli_control-1.0.0.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="png raw debug opengl"

DEPEND="
    sci-libs/fliusb
    sci-libs/libfli
    sci-libs/cfitsio
    dev-libs/libsnippets
    png? ( media-libs/libpng sys-libs/zlib )
    opengl? ( media-libs/freeglut )
"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

CMAKE_USE_DIR="${S}"
BUILD_DIR=${S} 

src_configure() {
    local mycmakeargs=(
	"-DCMAKE_INSTALL_PREFIX=/usr/local"
	"-DDEBUG=$(usex debug)"
	"-DIMAGEVIEW=$(usex opengl)"
	"-DUSE_PNG=$(usex png)"
	"-DUSE_RAW=$(usex raw)"
    )
     cmake-utils_src_configure
}
