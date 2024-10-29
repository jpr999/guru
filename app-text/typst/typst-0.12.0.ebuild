# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	adler2@2.0.0
	ahash@0.8.11
	aho-corasick@1.1.3
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	approx@0.5.1
	arbitrary@1.3.2
	arrayref@0.3.9
	arrayvec@0.7.6
	autocfg@1.4.0
	az@1.2.1
	base64@0.22.1
	biblatex@0.10.0
	bincode@1.3.3
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.6.0
	bitvec@1.0.1
	bumpalo@3.16.0
	by_address@1.2.1
	bytemuck@1.18.0
	byteorder-lite@0.1.0
	byteorder@1.5.0
	cc@1.1.24
	cfg-if@1.0.0
	chinese-number@0.7.7
	chinese-variant@1.1.3
	chrono@0.4.38
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	citationberg@0.4.0
	clap@4.5.19
	clap_builder@4.5.19
	clap_complete@4.5.32
	clap_derive@4.5.18
	clap_lex@0.7.2
	clap_mangen@0.2.23
	cobs@0.2.3
	codespan-reporting@0.11.1
	color-print-proc-macro@0.3.6
	color-print@0.3.6
	color_quant@1.1.0
	colorchoice@1.0.2
	comemo-macros@0.4.0
	comemo@0.4.0
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	core_maths@0.1.0
	crc32fast@1.4.2
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crunchy@0.2.2
	csv-core@0.1.11
	csv@1.3.0
	data-url@0.3.1
	deranged@0.3.11
	derive_arbitrary@1.3.2
	dirs-sys@0.4.1
	dirs@5.0.1
	displaydoc@0.2.5
	downcast-rs@1.2.1
	ecow@0.2.2
	either@1.13.0
	embedded-io@0.4.0
	embedded-io@0.6.1
	enum-ordinalize-derive@4.3.1
	enum-ordinalize@4.3.0
	env_proxy@0.4.1
	equivalent@1.0.1
	errno@0.3.9
	fancy-regex@0.11.0
	fast-srgb8@1.0.0
	fastrand@2.1.1
	fdeflate@0.3.5
	filetime@0.2.25
	flate2@1.0.34
	float-cmp@0.9.0
	fnv@1.0.7
	fontconfig-parser@0.5.7
	fontdb@0.21.0
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	fs_extra@1.3.0
	fsevent-sys@4.1.0
	funty@2.0.0
	getopts@0.2.21
	getrandom@0.2.15
	gif@0.13.1
	half@2.4.1
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashbrown@0.15.0
	hayagriva@0.8.0
	heck@0.5.0
	hypher@0.1.5
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_properties@1.5.1
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_adapters@1.5.0
	icu_provider_blob@1.5.0
	icu_provider_macros@1.5.0
	icu_segmenter@1.5.0
	icu_segmenter_data@1.5.0
	idna@0.5.0
	if_chain@1.0.2
	image-webp@0.1.3
	image@0.25.2
	imagesize@0.13.0
	indexmap-nostd@0.4.0
	indexmap@1.9.3
	indexmap@2.6.0
	inotify-sys@0.1.5
	inotify@0.9.6
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.1
	itoa@1.0.11
	jobserver@0.1.32
	js-sys@0.3.70
	kamadak-exif@0.5.5
	kqueue-sys@1.0.4
	kqueue@1.0.8
	kurbo@0.11.1
	libc@0.2.159
	libdeflate-sys@1.21.0
	libdeflater@1.21.0
	libfuzzer-sys@0.4.7
	libm@0.2.8
	libredox@0.1.3
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	lipsum@0.9.1
	litemap@0.7.3
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	lzma-sys@0.1.20
	memchr@2.7.4
	memmap2@0.9.5
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@0.8.11
	multi-stash@0.2.0
	mutate_once@0.1.1
	native-tls@0.2.12
	nom@7.1.3
	notify@6.1.1
	num-bigint@0.4.6
	num-conv@0.1.0
	num-derive@0.4.2
	num-integer@0.1.46
	num-traits@0.2.19
	numerals@0.1.4
	once_cell@1.20.1
	open@5.3.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-src@300.3.2+3.3.2
	openssl-sys@0.9.103
	openssl@0.10.66
	option-ext@0.2.0
	oxipng@9.1.2
	palette@0.7.6
	palette_derive@0.7.6
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	pathdiff@0.2.1
	pdf-writer@0.12.0
	percent-encoding@2.3.1
	phf@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.11.2
	pico-args@0.5.0
	pixglyph@0.5.1
	pkg-config@0.3.31
	plist@1.7.0
	png@0.17.14
	portable-atomic@1.9.0
	postcard@1.0.10
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	proc-macro2@1.0.86
	psm@0.1.23
	pulldown-cmark@0.9.6
	qcms@0.3.0
	quick-error@2.0.1
	quick-xml@0.32.0
	quick-xml@0.36.2
	quote@1.0.37
	radium@0.7.0
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.7
	redox_users@0.4.6
	regex-automata@0.4.8
	regex-syntax@0.8.5
	regex@1.11.0
	resvg@0.43.0
	rgb@0.8.50
	roff@0.2.2
	roxmltree@0.20.0
	rust_decimal@1.36.0
	rustc-hash@1.1.0
	rustc_version@0.4.1
	rustix@0.38.37
	rustversion@1.0.17
	rustybuzz@0.18.0
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.24
	scopeguard@1.2.0
	security-framework-sys@2.12.0
	security-framework@2.11.1
	self-replace@1.5.0
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	serde_json@1.0.128
	serde_spanned@0.6.8
	serde_yaml@0.8.26
	serde_yaml@0.9.34+deprecated
	shell-escape@0.1.5
	shlex@1.3.0
	simd-adler32@0.3.7
	simplecss@0.2.1
	siphasher@0.3.11
	siphasher@1.0.1
	slotmap@1.0.7
	smallvec@1.13.2
	spin@0.9.8
	stable_deref_trait@1.2.0
	stacker@0.1.17
	strict-num@0.1.1
	string-interner@0.17.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subsetter@0.2.0
	svg2pdf@0.12.0
	svgtypes@0.15.2
	syn@2.0.79
	synstructure@0.13.1
	syntect@5.2.0
	tap@1.0.1
	tar@0.4.42
	tempfile@3.13.0
	termcolor@1.4.1
	terminal_size@0.4.0
	thin-vec@0.2.13
	thiserror-impl@1.0.64
	thiserror@1.0.64
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tiny-skia-path@0.11.4
	tiny-skia@0.11.4
	tinystr@0.7.6
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	ttf-parser@0.24.1
	two-face@0.4.0
	typed-arena@2.0.2
	typst-assets@0.12.0
	unic-langid-impl@0.9.5
	unic-langid@0.9.5
	unicase@2.7.0
	unicode-bidi-mirroring@0.3.0
	unicode-bidi@0.3.17
	unicode-ccc@0.3.0
	unicode-ident@1.0.13
	unicode-math-class@0.1.0
	unicode-normalization@0.1.24
	unicode-properties@0.1.3
	unicode-script@0.5.7
	unicode-segmentation@1.12.0
	unicode-vo@0.1.0
	unicode-width@0.1.14
	unsafe-libyaml@0.2.11
	unscanny@0.1.0
	ureq@2.10.1
	url@2.5.2
	usvg@0.43.0
	utf8_iter@1.0.4
	utf8parse@0.2.2
	vcpkg@0.2.15
	version_check@0.9.5
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.93
	wasm-bindgen-macro-support@0.2.93
	wasm-bindgen-macro@0.2.93
	wasm-bindgen-shared@0.2.93
	wasm-bindgen@0.2.93
	wasmi@0.35.0
	wasmi_collections@0.35.0
	wasmi_core@0.35.0
	wasmparser-nostd@0.100.2
	weezl@0.1.8
	winapi-util@0.1.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	writeable@0.5.5
	wyz@0.5.1
	xattr@1.3.1
	xmlparser@0.13.6
	xmlwriter@0.1.0
	xmp-writer@0.3.0
	xz2@0.1.7
	yaml-front-matter@0.1.0
	yaml-rust@0.4.5
	yoke-derive@0.7.4
	yoke@0.7.4
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zerofrom-derive@0.1.4
	zerofrom@0.1.4
	zerotrie@0.1.3
	zerovec-derive@0.10.3
	zerovec@0.10.4
	zip@2.2.0
	zopfli@0.8.1
	zune-core@0.4.12
	zune-jpeg@0.4.13
"

declare -A GIT_CRATES=(
	[typst-dev-assets]='https://github.com/typst/typst-dev-assets;b07d1560143d6883887358d30edb25cb12fcf5b9;typst-dev-assets-%commit%'
)

inherit cargo shell-completion

DESCRIPTION="A markup-based typesetting system for the sciences"
HOMEPAGE="https://typst.app"
SRC_URI="
	https://github.com/${PN}/${PN}/archive/v${PV}/${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD Boost-1.0
	CC0-1.0 ISC MIT MPL-2.0 Unicode-3.0 Unicode-DFS-2016 ZLIB
"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

RDEPEND="
	>=dev-libs/openssl-1.0.2o-r6:0=
"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-vcs/git
"

QA_FLAGS_IGNORED="usr/bin/typst"

DOCS=( README.md )

src_compile() {
	local GIT_HASH=$(gunzip < "${DISTDIR}/${P}.tar.gz" | git get-tar-commit-id)
	export TYPST_VERSION="${PV} (${GIT_HASH::8})"
	export GEN_ARTIFACTS="artifacts/"

	cargo_src_compile
}

src_install() {
	local ARTIFACTSDIR='crates/typst-cli/artifacts'
	cargo_src_install --path "${S}/crates/typst-cli"
	doman "${ARTIFACTSDIR}/${PN}"*.1
	dozshcomp "${ARTIFACTSDIR}/_${PN}"
	dofishcomp "${ARTIFACTSDIR}/${PN}.fish"
	newbashcomp "${ARTIFACTSDIR}/${PN}.bash" "${PN}"

	einstalldocs
}

src_test() {
	cargo_src_test --workspace
}
