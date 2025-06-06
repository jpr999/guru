# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs xdg-utils

DESCRIPTION="A lightweight feed reader with ncurses user interface inspired by Newsboat."
HOMEPAGE="https://codeberg.org/newsraft/newsraft"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://codeberg.org/newsraft/newsraft.git"
else
	SRC_URI="https://codeberg.org/newsraft/newsraft/archive/${P}.tar.gz"
	KEYWORDS="~amd64"
	S="${WORKDIR}/${PN}"
fi

LICENSE="ISC"
SLOT="0"

DEPEND="
	dev-db/sqlite:3
	dev-libs/expat
	dev-libs/gumbo:=
	net-misc/curl
	sys-libs/ncurses:=
"
RDEPEND="${DEPEND}"
BDEPEND="
	app-text/scdoc
	virtual/pkgconfig
"

src_compile(){
	emake CC="$(tc-getCC)" LDFLAGS="${LDFLAGS}" CFLAGS="${CFLAGS}"
}

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install
	einstalldocs
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
