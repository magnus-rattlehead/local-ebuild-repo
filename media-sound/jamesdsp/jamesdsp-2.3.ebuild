EAPI=7

inherit git-r3 desktop qmake-utils

DESCRIPTION="A QT-based audio effects processor"
HOMEPAGE="https://github.com/Audio4Linux/JDSP4Linux"
EGIT_REPO_URI="https://github.com/Audio4Linux/JDSP4Linux/"
EGIT_SUBMODULES=( '*' )
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="dev-cpp/glibmm
	media-video/pipewire
	dev-qt/qtsvg:5"
DEPEND="${RDEPEND}
	dev-libs/glib:2
	dev-qt/qtcore:5
	app-arch/libarchive"
src_configure() {
	eqmake5
}

src_install() {
	dobin "${S}/src/jamesdsp"
	newicon ${S}/resources/icons/icon.svg jamesdsp.svg
	make_desktop_entry /usr/bin/jamesdsp JamesDSP /usr/share/pixmaps/jamesdsp.svg "Audio;AudioVideo"
}
