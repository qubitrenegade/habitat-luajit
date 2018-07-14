pkg_name=luajit
pkg_distname=LuaJIT
pkg_origin=qbr
pkg_version="2.0.5"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_source=http://luajit.org/download/${pkg_distname}-${pkg_version}.tar.gz
pkg_filename="${pkg_distname}-${pkg_version}.tar.gz"
pkg_shasum=874b1f8297c697821f561f9b73b57ffd419ed8f4278c82e05b48806d30c1e979
pkg_deps=(core/gcc)
pkg_build_deps=(core/make)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_bin_dirs=(bin)
pkg_pconfig_dirs=(lib/pconfig)
pkg_interpreters=(bin/luajit)
pkg_description="LuaJIT - Lua Just In Time compiler/interpeter"
pkg_upstream_url="http://luajit.org"

do_unpack() {
  do_default_unpack
  mv ${HAB_CACHE_SRC_PATH}/${pkg_distname}-${pkg_version} ${HAB_CACHE_SRC_PATH}/${pkg_name}-${pkg_version}
}

do_build() {
  make PREFIX="${pkg_prefix}"
}

do_install() {
  make install PREFIX="${pkg_prefix}"
}
