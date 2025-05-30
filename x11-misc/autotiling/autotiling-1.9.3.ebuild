# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517="setuptools"
PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1 pypi

DESCRIPTION="Script for sway and i3 to automatically switch the window split orientation"
HOMEPAGE="https://github.com/nwg-piotr/autotiling"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="$(python_gen_cond_dep '>=dev-python/i3ipc-2.0.1[${PYTHON_USEDEP}]')"
DEPEND="${RDEPEND}"
BDEPEND="$(python_gen_cond_dep 'dev-python/wheel[${PYTHON_USEDEP}]')"
