# Copyright 2021-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1

DESCRIPTION="Python command line client for tldr pages"
HOMEPAGE="https://github.com/tldr-pages/tldr-python-client"
# sdist lacks some files.
SRC_URI="https://github.com/tldr-pages/tldr-python-client/archive/refs/tags/${PV}.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/${PN}-python-client-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="man"

RDEPEND="
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/shtab[${PYTHON_USEDEP}]
	dev-python/termcolor[${PYTHON_USEDEP}]
	!app-misc/tealdeer
"
BDEPEND="
	man? (
		dev-python/sphinx
		dev-python/sphinx-argparse
	)
"

EPYTEST_DESELECT=(
	# violates network sandbox
	tests/test_tldr.py::test_error_message
)

distutils_enable_tests pytest

src_prepare() {
	distutils-r1_src_prepare
}

src_compile() {
	use man && emake -C docs
	distutils-r1_src_compile
}
