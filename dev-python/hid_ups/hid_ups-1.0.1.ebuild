# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )
inherit distutils-r1

DESCRIPTION="Python-based library for interpreting UPS HID data."
HOMEPAGE="https://github.com/desultory/hid_ups"
SRC_URI="https://github.com/desultory/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-python/zenlib-2.1.2[${PYTHON_USEDEP}]
	>=dev-python/hidapi-0.14.0[${PYTHON_USEDEP}]
"
