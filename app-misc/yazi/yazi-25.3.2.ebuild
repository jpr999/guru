# Copyright 2024-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	aho-corasick@1.1.3
	aligned-vec@0.5.0
	allocator-api2@0.2.21
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi-to-tui@7.0.0
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.7
	anstyle@1.0.10
	anyhow@1.0.96
	arbitrary@1.4.1
	arc-swap@1.7.1
	arg_enum_proc_macro@0.3.4
	arrayvec@0.7.6
	async-priority-channel@0.2.0
	autocfg@1.4.0
	av1-grain@0.2.3
	avif-serialize@0.8.3
	backtrace@0.3.74
	base64@0.22.1
	better-panic@0.3.0
	bincode@1.3.3
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.9.0
	bitstream-io@2.6.0
	block-buffer@0.10.4
	block2@0.5.1
	bstr@1.11.3
	built@0.7.7
	bumpalo@3.17.0
	bytemuck@1.21.0
	byteorder-lite@0.1.0
	byteorder@1.5.0
	bytes@1.10.0
	cassowary@0.3.0
	castaway@0.2.3
	cc@1.2.16
	cfg-expr@0.15.8
	cfg-if@1.0.0
	chrono@0.4.40
	clap@4.5.31
	clap_builder@4.5.31
	clap_complete@4.5.46
	clap_complete_fig@4.5.2
	clap_complete_nushell@4.5.5
	clap_derive@4.5.28
	clap_lex@0.7.4
	clipboard-win@5.4.0
	color_quant@1.1.0
	colorchoice@1.0.3
	compact_str@0.8.1
	concurrent-queue@2.5.0
	console@0.15.11
	core-foundation-sys@0.8.7
	crc32fast@1.4.2
	crossbeam-channel@0.5.14
	crossbeam-deque@0.8.6
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.21
	crossterm@0.28.1
	crossterm_winapi@0.9.1
	crunchy@0.2.3
	crypto-common@0.1.6
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	deranged@0.3.11
	derive_builder@0.20.2
	derive_builder_core@0.20.2
	derive_builder_macro@0.20.2
	digest@0.10.7
	dirs-sys@0.5.0
	dirs@6.0.0
	displaydoc@0.2.5
	either@1.14.0
	encode_unicode@1.0.0
	env_home@0.1.0
	equivalent@1.0.2
	erased-serde@0.4.5
	errno@0.3.10
	error-code@3.3.1
	event-listener@4.0.3
	exr@1.73.0
	fdeflate@0.3.7
	fdlimit@0.3.0
	filedescriptor@0.8.3
	filetime@0.2.25
	flate2@1.1.0
	fnv@1.0.7
	foldhash@0.1.4
	form_urlencoded@1.2.1
	fsevent-sys@4.1.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	generic-array@0.14.7
	getrandom@0.2.15
	gif@0.13.1
	gimli@0.31.1
	globset@0.4.16
	half@2.4.1
	hashbrown@0.15.2
	heck@0.5.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.1
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	ident_case@1.0.1
	idna@1.0.3
	idna_adapter@1.2.0
	image-webp@0.2.1
	image@0.25.5
	imgref@1.11.0
	indexmap@2.7.1
	indoc@2.0.5
	inotify-sys@0.1.5
	inotify@0.11.0
	instability@0.3.7
	interpolate_name@0.2.4
	is_terminal_polyfill@1.70.1
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.14
	jobserver@0.1.32
	js-sys@0.3.77
	kqueue-sys@1.0.4
	kqueue@1.0.8
	lazy_static@1.5.0
	lebe@0.5.2
	libc@0.2.170
	libfuzzer-sys@0.4.9
	libredox@0.1.3
	linux-raw-sys@0.4.15
	litemap@0.7.5
	lock_api@0.4.12
	log@0.4.26
	loop9@0.1.5
	lru@0.12.5
	lru@0.13.0
	lua-src@547.0.0
	luajit-src@210.5.12+a4f56a4
	malloc_buf@0.0.6
	matchers@0.1.0
	maybe-rayon@0.1.1
	md-5@0.10.6
	memchr@2.7.4
	minimal-lexical@0.2.1
	miniz_oxide@0.8.5
	mio@1.0.3
	mlua-sys@0.6.7
	mlua@0.10.3
	mlua_derive@0.10.1
	new_debug_unreachable@1.0.6
	nom@7.1.3
	noop_proc_macro@0.3.0
	notify-types@2.0.0
	notify@8.0.0
	nu-ansi-term@0.46.0
	num-bigint@0.4.6
	num-conv@0.1.0
	num-derive@0.4.2
	num-integer@0.1.46
	num-rational@0.4.2
	num-traits@0.2.19
	num_threads@0.1.7
	objc-sys@0.3.5
	objc2-encode@4.1.0
	objc2-foundation@0.2.2
	objc2@0.5.2
	objc@0.2.7
	object@0.36.7
	once_cell@1.20.3
	onig@6.4.0
	onig_sys@69.8.1
	option-ext@0.2.0
	ordered-float@2.10.1
	overload@0.1.1
	parking@2.2.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	percent-encoding@2.3.1
	pin-project-lite@0.2.16
	pin-utils@0.1.0
	pkg-config@0.3.31
	plist@1.7.0
	png@0.17.16
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	proc-macro-error-attr2@2.0.0
	proc-macro-error2@2.0.1
	proc-macro2@1.0.93
	profiling-procmacros@1.0.16
	profiling@1.0.16
	qoi@0.4.1
	quick-error@2.0.1
	quick-xml@0.32.0
	quote@1.0.38
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	ratatui@0.29.0
	rav1e@0.7.1
	ravif@0.11.11
	rayon-core@1.12.1
	redox_syscall@0.5.9
	redox_users@0.5.0
	regex-automata@0.1.10
	regex-automata@0.4.9
	regex-syntax@0.6.29
	regex-syntax@0.8.5
	regex@1.11.1
	rgb@0.8.50
	rustc-demangle@0.1.24
	rustc-hash@2.1.1
	rustc_version@0.4.1
	rustix@0.38.44
	rustversion@1.0.19
	ryu@1.0.19
	same-file@1.0.6
	scopeguard@1.2.0
	semver@1.0.25
	serde-value@0.7.0
	serde@1.0.218
	serde_derive@1.0.218
	serde_json@1.0.139
	serde_spanned@0.6.8
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-mio@0.2.4
	signal-hook-registry@1.4.2
	signal-hook-tokio@0.3.1
	signal-hook@0.3.17
	simd-adler32@0.3.7
	simd_helpers@0.1.0
	simdutf8@0.1.5
	slab@0.4.9
	smallvec@1.14.0
	smawk@0.3.2
	socket2@0.5.8
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	syn@2.0.98
	synstructure@0.13.1
	syntect@5.2.0
	system-deps@6.2.2
	target-lexicon@0.12.16
	textwrap@0.16.1
	thiserror-impl@1.0.69
	thiserror-impl@2.0.11
	thiserror@1.0.69
	thiserror@2.0.11
	thread_local@1.1.8
	tikv-jemalloc-sys@0.6.0+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7
	tikv-jemallocator@0.6.0
	time-core@0.1.2
	time-macros@0.2.19
	time@0.3.37
	tinystr@0.7.6
	tokio-macros@2.5.0
	tokio-stream@0.1.17
	tokio-util@0.7.13
	tokio@1.43.0
	toml@0.8.20
	toml_datetime@0.6.8
	toml_edit@0.22.24
	tracing-appender@0.2.3
	tracing-attributes@0.1.28
	tracing-core@0.1.33
	tracing-log@0.2.0
	tracing-subscriber@0.3.19
	tracing@0.1.41
	trash@5.2.2
	twox-hash@2.1.0
	typeid@1.0.2
	typenum@1.18.0
	unicode-ident@1.0.17
	unicode-linebreak@0.1.5
	unicode-segmentation@1.12.0
	unicode-truncate@1.1.0
	unicode-width@0.1.14
	unicode-width@0.2.0
	url@2.5.4
	urlencoding@2.1.3
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uzers@0.12.1
	v_frame@0.3.8
	validator@0.20.0
	validator_derive@0.20.0
	valuable@0.1.1
	vergen-gitcl@1.0.5
	vergen-lib@0.1.6
	vergen@9.0.4
	version-compare@0.2.0
	version_check@0.9.5
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.100
	wasm-bindgen-macro-support@0.2.100
	wasm-bindgen-macro@0.2.100
	wasm-bindgen-shared@0.2.100
	wasm-bindgen@0.2.100
	weezl@0.1.8
	which@7.0.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-core@0.56.0
	windows-implement@0.56.0
	windows-interface@0.56.0
	windows-link@0.1.0
	windows-result@0.1.2
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.52.6
	windows@0.56.0
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.52.6
	winnow@0.7.3
	winsafe@0.0.19
	write16@1.0.0
	writeable@0.5.5
	yazi-prebuild@0.1.2
	yoke-derive@0.7.5
	yoke@0.7.5
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zerofrom-derive@0.1.6
	zerofrom@0.1.6
	zerovec-derive@0.10.3
	zerovec@0.10.4
	zune-core@0.4.12
	zune-inflate@0.2.54
	zune-jpeg@0.4.14
"

inherit cargo desktop shell-completion xdg

DESCRIPTION="Blazing fast terminal file manager written in Rust, based on async I/O."
HOMEPAGE="https://yazi-rs.github.io"
SRC_URI="
https://github.com/sxyazi/yazi/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD Boost-1.0
	CC0-1.0 ISC MIT MPL-2.0 UoI-NCSA Unicode-3.0 ZLIB
"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+cli"

QA_FLAGS_IGNORED="
	usr/bin/ya.*
"

RDEPEND="
	dev-libs/oniguruma
"
DEPEND="${RDEPEND}"

DOCS=(
	"README.md"
	"yazi-config/preset/keymap-default.toml"
	"yazi-config/preset/theme-dark.toml"
	"yazi-config/preset/theme-light.toml"
	"yazi-config/preset/yazi-default.toml"
)

src_prepare() {
	export YAZI_GEN_COMPLETIONS=true
	sed -i -r 's/strip\s+= true/strip = false/' Cargo.toml || die "Sed failed!"
	eapply_user
}

src_compile() {
	# workaround for GCC 15 issues:
	# unvendor libonig from rust-onig. see bugs 943785, 945008
	export RUSTONIG_SYSTEM_LIBONIG=1
	cargo_src_compile
	use cli && cargo_src_compile -p "${PN}-cli"
}

src_install() {
	dobin "$(cargo_target_dir)/${PN}"
	use cli && dobin "$(cargo_target_dir)/ya"

	newbashcomp "${S}/yazi-boot/completions/${PN}.bash" "${PN}"
	dozshcomp "${S}/yazi-boot/completions/_${PN}"
	dofishcomp "${S}/yazi-boot/completions/${PN}.fish"

	if use cli; then
		newbashcomp "${S}/yazi-cli/completions/ya.bash" "ya"
		dozshcomp "${S}/yazi-cli/completions/_ya"
		dofishcomp "${S}/yazi-cli/completions/ya.fish"
	fi

	domenu "assets/${PN}.desktop"
	einstalldocs
}
