# Copyright 2020-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake xdg

DESCRIPTION="Simple, sleek QT based DE for wayland using wayfire"
HOMEPAGE="https://gitlab.com/cubocore/paper/paperde"

if [[ ${PV} == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://gitlab.com/cubocore/paper/${PN}.git"
else
	COMMIT="15018307192107e2915671d412f3fc900ac5af4b"
	SRC_URI="https://gitlab.com/cubocore/paper/${PN}/-/archive/${COMMIT}/${PN}-${COMMIT}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
	S="${WORKDIR}/${PN}-${COMMIT}"
fi

LICENSE="GPL-3"
SLOT="0"

BDEPEND="
	dev-qt/qtwaylandscanner:5
	kde-frameworks/extra-cmake-modules
"
DEPEND="
	dev-libs/libdbusmenu-qt
	dev-libs/wayland
	dev-libs/wayland-protocols
	dev-qt/designer:5
	dev-qt/qtcore:5
	dev-qt/qtdbus:5
	dev-qt/qtgui:5[wayland,X]
	dev-qt/qtnetwork:5
	dev-qt/qtsvg:5
	dev-qt/qtwidgets:5[X]
	gui-libs/libcprime
	gui-libs/libcsys
"
RDEPEND="
	${DEPEND}
	gui-libs/wlroots
	gui-wm/wayfire[X]
	sys-apps/xdg-desktop-portal
	x11-misc/qt5ct
"

PATCHES=(
	"${FILESDIR}/${P}-fix-deps.patch"
)

src_configure() {
	local mycmakeargs=(
		-DPKGSHAREDPATH="${EPREFIX}/usr/share/paperde"
		-DPKGCONFPATH="${EPREFIX}/etc/xdg/paperde"
	)
	cmake_src_configure
}
