# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit unpacker

DESCRIPTION="ATIK CCD SDK"
HOMEPAGE="https://sourceforge.net/projects/linguider/files/atik_sdk/"
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/distfiles/atikccdsdk-1.15-amd64.deb"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_unpack() {
    unpack_deb ${A}
}

src_install() {
    cp -vR ${S}/* ${D}/
}
