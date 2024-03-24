# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.11
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.4
	anyhow@1.0.79
	assert_cmd@2.0.13
	async-trait@0.1.77
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.7
	better-panic@0.3.0
	bindgen@0.68.1
	bitflags@1.3.2
	bitflags@2.4.2
	block-buffer@0.10.4
	bstr@0.2.17
	bstr@1.9.0
	bumpalo@3.14.0
	byteorder@1.5.0
	bytes@1.5.0
	cc@1.0.83
	cexpr@0.6.0
	cfg-if@1.0.0
	chrono-english@0.1.7
	chrono@0.4.32
	clang-sys@1.7.0
	clap@4.4.18
	clap_builder@4.4.18
	clap_complete@4.4.9
	clap_derive@4.4.7
	clap_lex@0.6.0
	colorchoice@1.0.0
	comfy-table@7.1.0
	command-group@2.1.0
	console@0.15.8
	core-foundation-sys@0.8.6
	cpufeatures@0.2.12
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	crypto-common@0.1.6
	ctrlc@3.4.2
	deranged@0.3.11
	diff@0.1.13
	difflib@0.4.0
	digest@0.10.7
	dirs-sys@0.4.1
	dirs@5.0.1
	doc-comment@0.3.3
	encode_unicode@0.3.6
	env_logger@0.10.2
	equivalent@1.0.1
	errno@0.3.8
	fastrand@2.0.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-timer@3.0.2
	futures-util@0.3.30
	futures@0.3.30
	generic-array@0.14.7
	getrandom@0.2.12
	gimli@0.28.1
	glob@0.3.1
	half@1.8.2
	handlebars@4.5.0
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.4
	hex@0.4.3
	humantime@2.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.59
	indexmap@2.1.0
	is-terminal@0.4.10
	itoa@1.0.10
	js-sys@0.3.67
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.152
	libloading@0.8.1
	libproc@0.14.2
	libredox@0.0.1
	linux-raw-sys@0.4.13
	lock_api@0.4.11
	log@0.4.20
	memchr@2.7.1
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.10
	nix@0.26.4
	nix@0.27.1
	nom@7.1.3
	num-traits@0.2.17
	num_cpus@1.16.0
	num_threads@0.1.6
	object@0.32.2
	once_cell@1.19.0
	option-ext@0.2.0
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	peeking_take_while@0.1.2
	pem@3.0.3
	pest@2.7.6
	pest_derive@2.7.6
	pest_generator@2.7.6
	pest_meta@2.7.6
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	portpicker@0.1.1
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.1.0
	pretty_assertions@1.4.0
	proc-macro2@1.0.78
	procfs-core@0.16.0
	procfs@0.16.0
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rcgen@0.12.0
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.1.10
	regex-automata@0.4.4
	regex-syntax@0.8.2
	regex@1.10.3
	relative-path@1.9.2
	rev_buf_reader@0.3.0
	ring@0.17.7
	rstest@0.18.2
	rstest_macros@0.18.2
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.30
	rustls-pemfile@2.0.0
	rustls-pki-types@1.1.0
	rustls-webpki@0.102.1
	rustls@0.22.2
	rustversion@1.0.14
	ryu@1.0.16
	scanlex@0.1.4
	scopeguard@1.2.0
	semver@1.0.21
	serde@1.0.195
	serde_cbor@0.11.2
	serde_derive@1.0.195
	serde_json@1.0.111
	serde_yaml@0.9.30
	sha2@0.10.8
	shell-escape@0.1.5
	shellexpand@3.1.0
	shlex@1.3.0
	similar-asserts@1.5.0
	similar@2.4.0
	simplelog@0.12.1
	slab@0.4.9
	smallvec@1.13.1
	snap@1.1.1
	socket2@0.5.5
	spin@0.9.8
	strsim@0.10.0
	strum@0.25.0
	strum_macros@0.25.3
	subtle@2.5.0
	syn@2.0.48
	tempfile@3.9.0
	termcolor@1.1.3
	termtree@0.4.1
	test-log-macros@0.2.14
	test-log@0.2.14
	thiserror-impl@1.0.56
	thiserror@1.0.56
	time-core@0.1.2
	time-macros@0.2.16
	time@0.3.31
	tokio-macros@2.2.0
	tokio-rustls@0.25.0
	tokio@1.35.1
	typenum@1.17.0
	ucd-trie@0.1.6
	unicode-ident@1.0.12
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	unsafe-libyaml@0.2.10
	untrusted@0.9.0
	utf8parse@0.2.1
	version_check@0.9.4
	wait-timeout@0.2.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.90
	wasm-bindgen-macro-support@0.2.90
	wasm-bindgen-macro@0.2.90
	wasm-bindgen-shared@0.2.90
	wasm-bindgen@0.2.90
	web-sys@0.3.67
	whoami@1.4.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	yansi@0.5.1
	yasna@0.5.2
	zeroize@1.7.0
"

inherit cargo systemd shell-completion

DESCRIPTION="A cli tool for managing long running shell commands."
HOMEPAGE="https://github.com/nukesor/pueue"

SRC_URI="
	${CARGO_CRATE_URIS}
	https://github.com/Nukesor/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="
	usr/bin/${PN}
	usr/bin/${PN}d
	"

src_install() {
	cargo_src_install --path pueue

	# generate and install shell completions files
	mkdir completions

	# bash completions
	"${ED}"/usr/bin/pueue completions bash completions || die "gen bash completion failed"
	newbashcomp completions/${PN}.bash ${PN}

	# zsh completions
	"${ED}"/usr/bin/pueue completions zsh completions || die "gen zsh completion failed"
	dozshcomp completions/_${PN}

	# fish completions
	"${ED}"/usr/bin/pueue completions fish completions || die "gen fish completion failed "
	dofishcomp completions/${PN}.fish

	# install the systemd-service
	systemd_douserunit utils/pueued.service
}
