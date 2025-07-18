# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{{11..13},13t} )

inherit distutils-r1 pypi

DESCRIPTION="Kconfig tooling for esp-idf"
HOMEPAGE="https://github.com/espressif/esp-idf-kconfig"

LICENSE="Apache-2.0"
SLOT="0"

KEYWORDS="~amd64"

RESTRICT="test"

PATCHES=( "${FILESDIR}/${PN}-2.5.0-rename-kconfiglib.patch" )

src_prepare() {
	default
	rm -r docs || die
}
