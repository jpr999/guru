# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1

DESCRIPTION="Quickly generate HTML documentation from a JSON schema "
HOMEPAGE="
	https://github.com/coveooss/json-schema-for-humans/
	https://pypi.org/project/json-schema-for-humans/
"
SRC_URI="https://github.com/coveooss/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/dataclasses-json[${PYTHON_USEDEP}]
	dev-python/jinja2[${PYTHON_USEDEP}]
	dev-python/markdown2[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"

BDEPEND="
	test? ( dev-python/beautifulsoup4[${PYTHON_USEDEP}]	)
"

distutils_enable_tests pytest

python_test(){
	local EPYTEST_DESELECT=(
		# tests with network
		'tests/generate_test.py::test_references_url'
		'tests/test_md_generate.py::TestMdGenerate::test_basic[True-True-references_url'
		'tests/test_md_generate.py::TestMdGenerate::test_basic[True-False-references_url'
		'tests/test_md_generate.py::TestMdGenerate::test_basic[False-True-references_url'
		'tests/test_md_generate.py::TestMdGenerate::test_basic[False-False-references_url'
		# tests with error when passed
		'tests/cli_test.py::test_config_parameters_with_nonexistent_output_path'
		'tests/cli_test.py::test_nonexistent_output_path'
	)
	epytest
}
