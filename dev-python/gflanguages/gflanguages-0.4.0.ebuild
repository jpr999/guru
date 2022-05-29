# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="A python API for evaluating language support in the Google Fonts collection"
HOMEPAGE="
	https://github.com/googlefonts/lang
	https://pypi.org/project/gflanguages/
"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
KEYWORDS="~amd64"
SLOT="0"

RDEPEND="dev-python/protobuf-python[${PYTHON_USEDEP}]"
DEPEND="
	${RDEPEND}
	>=dev-python/setuptools_scm-4[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

python_prepare_all() {
	export SETUPTOOLS_SCM_PRETEND_VERSION="${PV}"
	distutils-r1_python_prepare_all
}
