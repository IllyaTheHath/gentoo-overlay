# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ECM_TEST="optional"
QTMIN=5.12.0
inherit ecm

WRAPLAND_TAR_NAME="${PN}-${PN}@${PV}"

DESCRIPTION="Qt/C++ library wrapping libwayland"
HOMEPAGE="https://gitlab.com/kwinft/wrapland/"
SRC_URI="https://gitlab.com/kwinft/${PN}/-/archive/${P/-/@}/${PN}-${P/-/@}.tar.gz"
S="${WORKDIR}/${PN}-${P/-/@}"

LICENSE="LGPL-2.1+"
SLOT="5"
KEYWORDS="~amd64"

DEPEND="
	>=dev-libs/wayland-1.18
	>=dev-qt/qtconcurrent-${QTMIN}:5
	>=dev-qt/qtgui-${QTMIN}:5[egl]
	>=kde-frameworks/extra-cmake-modules-5.92.0
	dev-util/wayland-scanner
"

DEPEND="${RDEPEND}
	>=dev-libs/wayland-protocols-1.22
"
