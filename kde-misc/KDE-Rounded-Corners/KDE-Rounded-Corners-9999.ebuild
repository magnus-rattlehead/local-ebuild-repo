EAPI=7

inherit git-r3 cmake-utils

DESCRIPTION="A fork of ShapeCorners - rounds the corners of your windows"
HOMEPAGE="https://github.com/matinlotfali/KDE-Rounded-Corners"
EGIT_REPO_URI="https://github.com/matinlotfali/KDE-Rounded-Corners"
EGIT_SUBMODULES=( '*' )
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
DEPEND="
	kde-plasma/breeze
	kde-plasma/kwin"
src_prepare() {
	cmake-utils_src_prepare
}
src_configure() {
	local mycmakeargs=(
		"-DCMAKE_INSTALL_PREFIX=/usr"
		"-DQT5BUILD=ON"
	)
	cmake-utils_src_configure
}
src_compile() {
	cmake-utils_src_compile
}
src_install() {
	cmake-utils_src_install
}
