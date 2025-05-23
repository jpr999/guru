# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{11..13})

inherit distutils-r1

DESCRIPTION="Language Server Protocol types code generator & packages"
HOMEPAGE="
	https://github.com/microsoft/lsprotocol
	https://pypi.org/project/lsprotocol/
"
SRC_URI="
	https://github.com/microsoft/${PN}/archive/refs/tags/${PV}.tar.gz
		-> ${P}.gh.tar.gz
"
S="${S}/packages/python"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"
RESTRICT="test" # Tests only available for the top-level module, which we aren't interested in

RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/cattrs[${PYTHON_USEDEP}]
"
