# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	anstream@0.6.7
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.10
	autocfg@1.1.0
	bitflags@2.4.1
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	clap@4.5.20
	clap_builder@4.5.20
	clap_lex@0.7.2
	colorchoice@1.0.0
	libc@0.2.162
	log@0.4.22
	memoffset@0.9.0
	nix@0.29.0
	strsim@0.11.1
	utf8parse@0.2.1
	windows-sys@0.52.0
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.52.0
"

inherit cargo

DESCRIPTION="Display existing Wayland applications as a wallpaper"
HOMEPAGE="https://gitlab.freedesktop.org/mstoeckl/windowtolayer"

if [[ ${PV} == 9999 ]]; then
	  inherit git-r3
	  EGIT_REPO_URI="https://gitlab.freedesktop.org/mstoeckl/${PN}.git"
else
	SRC_URI="
		https://gitlab.freedesktop.org/mstoeckl/windowtolayer/-/archive/v${PV}/${PN}-v${PV}.tar.bz2 -> ${P}.tar.bz2
		${CARGO_CRATE_URIS}
	"
	KEYWORDS="~amd64"
	S="${WORKDIR}/${PN}-v${PV}"
fi

LICENSE="GPL-3+"
# Dependent crate licenses
LICENSE+=" MIT"
SLOT="0"

#796887
QA_FLAGS_IGNORED="/usr/bin/${PN}"

src_unpack() {
	if [[ ${PV} == 9999 ]]; then
		  git-r3_src_unpack
		  cargo_live_src_unpack
	else
		cargo_src_unpack
	fi
}
