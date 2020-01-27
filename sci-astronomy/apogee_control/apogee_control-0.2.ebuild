# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Simple Apogee CCD management tool"
HOMEPAGE="https://github.com/eddyem/apogee_control"
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/apogee_control.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="bta png raw imview"

DEPEND="
    dev-libs/libusb-compat
    bta? ( sci-astronomy/sofa_c )
    png? ( media-libs/libpng )
    sci-libs/libapogee
    sci-libs/apogeec
    sci-libs/cfitsio
"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

CMAKE_USE_DIR="${S}"
BUILD_DIR=${S} 

src_configure() {
    local mycmakeargs=(
	"-DCMAKE_INSTALL_PREFIX=/usr/local"
	"-DUSE_BTA=$(usex bta)"
	"-DUSE_PNG=$(usex png)"
	"-DUSE_RAW=$(usex raw)"
	"-DUSE_IMAGEVIEW=$(usex imview)"
    )
    cmake-utils_src_configure
}

