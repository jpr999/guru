# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Toolkit for building desktop widgets using QtQuick"
HOMEPAGE="https://quickshell.org/"

if [[ "${PV}" = *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/quickshell-mirror/${PN^}.git"
else
	SRC_URI="https://github.com/quickshell-mirror/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="LGPL-3"
SLOT="0"
# Upstream recommends leaving all build options enabled by default
IUSE="+breakpad +jemalloc +sockets +wayland +layer-shell +session-lock +toplevel-management +screencopy +X +pipewire +tray +mpris +pam +hyprland +hyprland-global-shortcuts +hyprland-focus-grab +i3 +i3-ipc +bluetooth"

RDEPEND="
	dev-qt/qtbase:6
	dev-qt/qtsvg:6
	jemalloc? ( dev-libs/jemalloc )
	wayland? (
		dev-libs/wayland
		dev-qt/qtwayland:6
	)
	screencopy? (
		x11-libs/libdrm
		media-libs/mesa
	)
	X? ( x11-libs/libxcb )
	pipewire? ( media-video/pipewire )
	mpris? ( dev-qt/qtdbus )
	pam? ( sys-libs/pam )
	bluetooth? ( net-wireless/bluez )
"
DEPEND="${RDEPEND}"
BDEPEND="
	|| ( >=sys-devel/gcc-14:* >=llvm-core/clang-17:* )
	dev-build/cmake
	dev-build/ninja
	virtual/pkgconfig
	dev-cpp/cli11
	dev-util/spirv-tools
	dev-qt/qtshadertools:6
	breakpad? ( dev-util/breakpad )
	wayland? (
		dev-util/wayland-scanner
		dev-libs/wayland-protocols
	)
"

src_configure(){
	mycmakeargs=(
			-DCMAKE_BUILD_TYPE=RelWithDebInfo
			-DDISTRIBUTOR="Gentoo GURU"
			-DINSTALL_QML_PREFIX="lib64/qt6/qml"
			-DCRASH_REPORTER=$(usex breakpad ON OFF)
			-DUSE_JEMALLOC=$(usex jemalloc ON OFF)
			-DSOCKETS=$(usex sockets ON OFF)
			-DWAYLAND=$(usex wayland ON OFF)
			-DWAYLAND_WLR_LAYERSHELL=$(usex layer-shell ON OFF)
			-DWAYLAND_SESSION_LOCK=$(usex session-lock ON OFF)
			-DWAYLAND_TOPLEVEL_MANAGEMENT=$(usex toplevel-management ON OFF)
			-DSCREENCOPY=$(usex screencopy ON OFF)
			-DX11=$(usex X ON OFF)
			-DSERVICE_PIPEWIRE=$(usex pipewire ON OFF)
			-DSERVICE_STATUS_NOTIFIER=$(usex tray ON OFF)
			-DSERVICE_MPRIS=$(usex mpris ON OFF)
			-DSERVICE_PAM=$(usex pam ON OFF)
			-DHYPRLAND=$(usex hyprland ON OFF)
			-DHYPRLAND_GLOBAL_SHORTCUTS=$(usex hyprland-global-shortcuts)
			-DHYPRLAND_FOCUS_GRAB=$(usex hyprland-focus-grab)
			-DI3=$(usex i3 ON OFF)
			-DI3_IPC=$(usex i3-ipc ON OFF)
			-DBLUETOOTH=$(usex bluetooth ON OFF)
		)
		cmake_src_configure
}
