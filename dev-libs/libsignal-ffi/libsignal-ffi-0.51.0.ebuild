# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.1

EAPI=8

inherit cargo

DESCRIPTION="A C ABI library which exposes Signal protocol logic"
HOMEPAGE="https://github.com/signalapp/libsignal"
SRC_URI="
	https://github.com/signalapp/libsignal/archive/v${PV}.tar.gz -> ${P}.gh.tar.gz
	https://herbizarre.swordarmor.fr/garbage/${P}-vendor.tar.xz
"
S="${WORKDIR}/libsignal-${PV}/rust/bridge/ffi"

LICENSE="AGPL-3"
# Dependent crate licenses
LICENSE+=" AGPL-3 Apache-2.0 BSD-2 BSD ISC MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	dev-libs/protobuf
	sys-devel/clang
"

src_unpack() {
	default
	cargo_gen_config
	ln -s "${WORKDIR}/vendor/" "${WORKDIR}/libsignal-${PV}/vendor" || die
	sed -i "${ECARGO_HOME}/config.toml" \
		-e '/source.crates-io/d' \
		-e '/replace-with = "gentoo"/d' \
		-e '/local-registry = "\/nonexistent"/d' \
		|| die
	cat vendor/vendor-config.toml >> "${ECARGO_HOME}/config.toml" || die
}

src_install() {
	if use debug; then
		TARGET=debug
	else
		TARGET=release
	fi

	dolib.a "${WORKDIR}/${P/-ffi/}/target/${TARGET}/${PN/-/_}.a"
}
