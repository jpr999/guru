# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.2

EAPI=8

CRATES="
	adler-1.0.2
	aho-corasick-0.7.20
	anyhow-1.0.69
	ashpd-0.4.0
	async-broadcast-0.5.1
	async-channel-1.8.0
	async-executor-1.5.0
	async-global-executor-2.3.1
	async-io-1.12.0
	async-lock-2.6.0
	async-recursion-1.0.2
	async-std-1.12.0
	async-task-4.3.0
	async-trait-0.1.64
	atomic-waker-1.1.0
	atomic_refcell-0.1.9
	atty-0.2.14
	autocfg-1.1.0
	base64-0.21.0
	bitflags-1.3.2
	block-0.1.6
	block-buffer-0.10.3
	blocking-1.3.0
	bumpalo-3.12.0
	bytemuck-1.13.0
	byteorder-1.4.3
	cairo-rs-0.17.0
	cairo-sys-rs-0.17.0
	cc-1.0.79
	cfg-expr-0.11.0
	cfg-if-1.0.0
	color-thief-0.2.2
	concurrent-queue-2.1.0
	cpufeatures-0.2.5
	crc32fast-1.3.2
	crossbeam-utils-0.8.14
	crypto-common-0.1.6
	ctor-0.1.26
	dbus-0.6.5
	derivative-2.2.0
	digest-0.10.6
	dirs-4.0.0
	dirs-sys-0.3.7
	enumflags2-0.7.5
	enumflags2_derive-0.7.4
	env_logger-0.7.1
	event-listener-2.5.3
	fastrand-1.9.0
	field-offset-0.3.4
	flate2-1.0.25
	form_urlencoded-1.1.0
	futures-channel-0.3.26
	futures-core-0.3.26
	futures-executor-0.3.26
	futures-io-0.3.26
	futures-lite-1.12.0
	futures-macro-0.3.26
	futures-sink-0.3.26
	futures-task-0.3.26
	futures-util-0.3.26
	fuzzy-matcher-0.3.7
	gdk-pixbuf-0.17.0
	gdk-pixbuf-sys-0.17.0
	gdk4-0.6.3
	gdk4-sys-0.6.3
	gdk4-wayland-0.6.3
	gdk4-wayland-sys-0.6.3
	gdk4-x11-0.6.3
	gdk4-x11-sys-0.6.3
	generic-array-0.14.6
	getrandom-0.2.8
	gettext-rs-0.7.0
	gettext-sys-0.21.3
	gio-0.17.4
	gio-sys-0.17.4
	glib-0.15.12
	glib-0.17.5
	glib-macros-0.15.13
	glib-macros-0.17.6
	glib-sys-0.15.10
	glib-sys-0.17.4
	gloo-timers-0.2.6
	gobject-sys-0.15.10
	gobject-sys-0.17.4
	graphene-rs-0.17.1
	graphene-sys-0.17.0
	gsk4-0.6.3
	gsk4-sys-0.6.3
	gstreamer-0.20.3
	gstreamer-audio-0.20.2
	gstreamer-audio-sys-0.20.0
	gstreamer-base-0.20.0
	gstreamer-base-sys-0.20.0
	gstreamer-player-0.20.0
	gstreamer-player-sys-0.20.0
	gstreamer-sys-0.20.0
	gstreamer-video-0.20.3
	gstreamer-video-sys-0.20.0
	gtk4-0.6.6
	gtk4-macros-0.6.5
	gtk4-sys-0.6.3
	hashbrown-0.12.3
	heck-0.4.1
	hermit-abi-0.1.19
	hex-0.4.3
	humantime-1.3.0
	idna-0.3.0
	indexmap-1.9.2
	instant-0.1.12
	itoa-1.0.5
	js-sys-0.3.61
	kv-log-macro-1.0.7
	lazy_static-1.4.0
	libadwaita-0.3.1
	libadwaita-sys-0.3.0
	libc-0.2.139
	libdbus-sys-0.2.4
	locale_config-0.3.0
	lofty-0.11.0
	lofty_attr-0.6.0
	log-0.4.17
	malloc_buf-0.0.6
	memchr-2.5.0
	memoffset-0.6.5
	miniz_oxide-0.6.2
	mpris-player-0.6.2
	muldiv-1.0.1
	nix-0.25.1
	nom8-0.2.0
	num-integer-0.1.45
	num-rational-0.4.1
	num-traits-0.2.15
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	ogg_pager-0.5.0
	once_cell-1.17.1
	option-operations-0.5.0
	ordered-stream-0.2.0
	pango-0.17.4
	pango-sys-0.17.0
	parking-2.0.0
	paste-1.0.11
	percent-encoding-2.2.0
	pest-2.5.5
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.26
	polling-2.5.2
	ppv-lite86-0.2.17
	pretty-hex-0.3.0
	pretty_env_logger-0.4.0
	proc-macro-crate-1.3.0
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.51
	quick-error-1.2.3
	quote-1.0.23
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.4
	redox_syscall-0.2.16
	redox_users-0.4.3
	regex-1.7.1
	regex-syntax-0.6.28
	remove_dir_all-0.5.3
	rgb-0.8.36
	rustc_version-0.3.3
	ryu-1.0.12
	semver-0.11.0
	semver-parser-0.10.2
	serde-1.0.152
	serde_derive-1.0.152
	serde_json-1.0.93
	serde_repr-0.1.10
	sha1-0.10.5
	sha2-0.10.6
	slab-0.4.8
	smallvec-1.10.0
	socket2-0.4.7
	static_assertions-1.1.0
	syn-1.0.108
	system-deps-6.0.3
	temp-dir-0.1.11
	tempfile-3.3.0
	termcolor-1.2.0
	thiserror-1.0.38
	thiserror-impl-1.0.38
	thread_local-1.1.7
	tinyvec-1.6.0
	tinyvec_macros-0.1.1
	toml-0.5.11
	toml_datetime-0.5.1
	toml_edit-0.18.1
	tracing-0.1.37
	tracing-attributes-0.1.23
	tracing-core-0.1.30
	typenum-1.16.0
	ucd-trie-0.1.5
	uds_windows-1.0.2
	unicode-bidi-0.3.10
	unicode-ident-1.0.6
	unicode-normalization-0.1.22
	url-2.3.1
	value-bag-1.0.0-alpha.9
	version-compare-0.1.1
	version_check-0.9.4
	waker-fn-1.1.0
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.84
	wasm-bindgen-backend-0.2.84
	wasm-bindgen-futures-0.4.34
	wasm-bindgen-macro-0.2.84
	wasm-bindgen-macro-support-0.2.84
	wasm-bindgen-shared-0.2.84
	web-sys-0.3.61
	wepoll-ffi-0.1.2
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.42.0
	windows_aarch64_gnullvm-0.42.1
	windows_aarch64_msvc-0.42.1
	windows_i686_gnu-0.42.1
	windows_i686_msvc-0.42.1
	windows_x86_64_gnu-0.42.1
	windows_x86_64_gnullvm-0.42.1
	windows_x86_64_msvc-0.42.1
	zbus-3.10.0
	zbus_macros-3.10.0
	zbus_names-2.5.0
	zvariant-3.11.0
	zvariant_derive-3.11.0
"

inherit cargo gnome2-utils meson xdg

HOMEPAGE="https://gitlab.gnome.org/World/amberol"
DESCRIPTION="Simple GUI Music Player"
SRC_URI=" https://gitlab.gnome.org/World/${PN}/-/archive/${PV}/${P}.tar.bz2
	$(cargo_crate_uris)"

LICENSE="0BSD Apache-2.0 BSD GPL-3+ LGPL-3+ MIT Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# should probably work on x86, but needs testing.

RDEPEND="
	gui-libs/libadwaita:1
	gui-libs/gtk:4[wayland]
	dev-libs/libportal:=[gtk]
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-base:1.0
	media-libs/gst-plugins-bad:1.0
	media-libs/gst-plugins-good:1.0
	media-plugins/gst-plugins-mpg123:1.0
"

DEPEND="${RDEPEND}"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_unpack() {
	cargo_src_unpack
}

src_configure () {
	# upstream redefines CARGO_HOME, pointing to eclass defined
	ln -s "${WORKDIR}"/cargo_home "${S}"/cargo-home || die

	# upstream installs to /usr/share/appdata, fixing that
	sed -i 's/appdata/metainfo/g' "${S}"/data/meson.build
	mv "${S}"/data/io.bassi.Amberol.appdata.xml.in.in "${S}"/data/io.bassi.Amberol.metainfo.xml.in.in

	meson_src_configure
}

src_compile () {
	# ditto, except now build-dir
	ln -s "${WORKDIR}"/cargo_home "${WORKDIR}"/"${P}"-build/cargo-home || die

	# gmp-mpfr-sys uses ${ABI} variable (32|64) that clashes with gentoo's standard variable.
	local _abi
	if [[ ${ABI} =~ 64 ]]; then
		_abi="64"
	else
		_abi="32"
	fi

	ABI="${_abi}" meson_src_compile
}

src_install () {
	meson_src_install
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
}
pkg_postrm() {
	xdg_pkg_postrm
	gnome2_schemas_update
}
