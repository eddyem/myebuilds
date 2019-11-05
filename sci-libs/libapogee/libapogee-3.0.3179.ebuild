# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit unpacker

DESCRIPTION="Apogee CCD SDK"
HOMEPAGE=""
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/distfiles/libapogee-3.0.3179.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/libapogee-3.0.3179"

src_configure() {
        econf || die "econf failed"
}
