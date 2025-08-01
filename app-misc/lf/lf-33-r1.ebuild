# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module shell-completion desktop xdg

DESCRIPTION="Terminal file manager"
HOMEPAGE="https://github.com/gokcehan/lf"
SRC_URI="https://github.com/gokcehan/lf/archive/r${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://github.com/ephemer4l/gentoo-lf/raw/main/${P}-vendor.tar.xz"
S="${WORKDIR}/${PN}-r${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

IUSE="+static"

src_compile() {
	local ldflags="-w -X main.gVersion=r${PV}"
	use static && {
		export CGO_ENABLED=0
		ldflags+=' -extldflags "-static"'
	}

	ego build -ldflags="${ldflags}"
}

src_install() {
	local DOCS=( README.md etc/lfrc.example )

	dobin "${PN}"

	einstalldocs

	doman "${PN}.1"

	# bash & zsh cd script
	insinto "/usr/share/${PN}"
	doins "etc/${PN}cd.sh"

	# bash-completion
	newbashcomp "etc/${PN}.bash" "${PN}"
	bashcomp_alias lf lfcd

	# zsh-completion
	newzshcomp "etc/${PN}.zsh" "_${PN}"

	# fish-completion
	dofishcomp "etc/${PN}.fish"
	dofishcomp "etc/${PN}cd.fish"

	domenu "${PN}.desktop"
}
