# Copyright 2025
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_1{1..3})
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Convert pyproject.toml to Gentoo ebuilds automatically."
HOMEPAGE="https://gitlab.com/oz123/pyproject2ebuild"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
