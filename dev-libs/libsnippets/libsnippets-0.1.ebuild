# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Snippets library"
HOMEPAGE="https://github.com/eddyem/eddys_snippets"
SRC_URI="https://github.com/eddyem/mydistfiles/raw/master/libsnippets.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/libsnippets"

CMAKE_USE_DIR="${S}"
BUILD_DIR=${S} 

src_configure() {
     cmake-utils_src_configure
}
