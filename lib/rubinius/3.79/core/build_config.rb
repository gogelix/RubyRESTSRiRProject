module Rubinius
  config = {}
  config[:config_file] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/config.rb"
  config[:command_line] = ["--prefix=/rubinius/3.79", "--preserve-prefix", "--llvm-config=llvm-config-3.8", "--cc=clang-3.8", "--cxx=clang++-3.8"]
  config[:build_make] = "make"
  config[:build_rake] = "rake"
  config[:build_perl] = "perl"
  config[:llvm_path] = nil
  config[:llvm_system_name] = nil
  config[:llvm_configure] = "llvm-config-3.8"
  config[:llvm_version] = "3.8.0"
  config[:llvm_api_version] = 308
  config[:llvm_shared] = false
  config[:llvm_shared_objs] = nil
  config[:llvm_cxxflags] = ""
  config[:llvm_ldflags] = "-L/usr/lib/llvm-3.8/lib  -lrt -ldl -ltinfo -lpthread -lz -lm"
  config[:cc] = "clang-3.8"
  config[:cxx] = "clang++-3.8"
  config[:ldshared] = "clang-3.8 -shared"
  config[:ldsharedxx] = "clang++-3.8 -shared"
  config[:gcc_major] = "4.2"
  config[:user_cflags] = ""
  config[:user_cxxflags] = ""
  config[:user_cppflags] = ""
  config[:user_ldflags] = ""
  config[:system_cflags] = "-fPIC"
  config[:system_cxxflags] = "-std=c++11 "
  config[:system_cppflags] = ""
  config[:system_ldflags] = "-Wl,--export-dynamic -lrt -lcrypt -ldl -lpthread -latomic "
  config[:include_dirs] = ["/home/travis/build/rubinius/rubinius-build/rubinius-3.79/vendor/libsodium/src/libsodium/include", "/usr/local/include"]
  config[:lib_dirs] = ["/usr/local/lib"]
  config[:defines] = ["HAS_EXECINFO", "HAVE_SPT_REUSEARGV", "HAVE_CLOCK_GETTIME", "HAVE_NL_LANGINFO", "HAVE_POSIX_FADVISE", "HAVE_STRNLEN", "HAVE_TIMERFD", "HAVE_INOTIFY", "HAVE_STRUCT_STAT_ST_ATIM", "HAVE_STRUCT_STAT_ST_MTIM", "HAVE_STRUCT_STAT_ST_CTIM", "HAVE_TM_GMTOFF", "HAVE_TM_ZONE", "HAVE_TIMEZONE", "HAVE_TZNAME", "HAVE_DAYLIGHT", "HAVE_ALLOCA_H", "HAVE_STRING_H", "HAVE_SYS_TIME_H", "HAVE_SYS_TIMES_H", "HAVE_SYS_TYPES_H", "HAVE_UNISTD_H", "HAVE_STDARG_H", "STRERROR_R_CHAR_P"]
  config[:curses] = "-lcurses"
  config[:host] = "x86_64-unknown-linux-gnu"
  config[:cpu] = "x86_64"
  config[:vendor] = "unknown"
  config[:os] = "linux-gnu"
  config[:little_endian] = true
  config[:sizeof_long] = 8
  config[:x86_64] = true
  config[:aarch64] = false
  config[:dtrace] = false
  config[:dtrace_const] = false
  config[:debug_build] = false
  config[:sourcedir] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79"
  config[:stagingdir] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/staging/rubinius/3.79"
  config[:build_prefix] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/staging/rubinius/3.79"
  config[:runtime_gems_dir] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/staging/rubinius/3.79/runtime/gems"
  config[:bootstrap_gems_dir] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/bootstrap/gems"
  config[:capi_includedir] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/machine/include/capi"
  config[:build_exe] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/staging/rubinius/3.79/bin/rbx"
  config[:build_bin] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/build/bin"
  config[:prefixdir] = "/rubinius/3.79"
  config[:bindir] = "/bin"
  config[:libdir] = "/library"
  config[:encdir] = "/library/encoding/converter"
  config[:runtimedir] = "/runtime"
  config[:coredir] = "/core"
  config[:sitedir] = "/site"
  config[:vendordir] = "/vendor"
  config[:includedir] = "/machine/include/capi"
  config[:mandir] = "/man"
  config[:gemsdir] = "/gems"
  config[:gems_cache] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/vendor/cache"
  config[:gems_list] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/gems_list.txt"
  config[:gem_files] = ["bundler-1.11.2.gem", "daedalus-core-0.5.0.gem", "daedalus-core-1.3.gem", "ffi2-generators-0.1.1.gem", "json-1.8.6.gem", "minitest-4.7.5.gem", "psych-2.0.17.gem", "racc-1.4.14.gem", "rake-12.0.0.gem", "rb-readline-0.5.4.gem", "rdoc-4.3.0.gem", "redcard-1.1.0.gem", "rubinius-ast-3.8.gem", "rubinius-bridge-2.2.gem", "rubinius-code-3.0.gem", "rubinius-compiler-3.10.gem", "rubinius-coverage-2.1.gem", "rubinius-debugger-2.6.gem", "rubinius-developer_tools-2.0.0.gem", "rubinius-instructions-3.0.gem", "rubinius-melbourne-3.9.gem", "rubinius-processor-3.3.gem", "rubinius-profiler-2.1.gem", "rubinius-toolset-3.0.gem", "rubysl-2.2.0.gem", "rubysl-abbrev-2.0.4.gem", "rubysl-base64-2.0.0.gem", "rubysl-benchmark-2.0.1.gem", "rubysl-bigdecimal-2.0.2.gem", "rubysl-cgi-2.0.1.gem", "rubysl-cgi-session-2.1.0.gem", "rubysl-cmath-2.0.0.gem", "rubysl-complex-2.0.0.gem", "rubysl-continuation-2.0.0.gem", "rubysl-coverage-2.1.gem", "rubysl-csv-2.0.2.gem", "rubysl-curses-2.0.1.gem", "rubysl-date-2.0.9.gem", "rubysl-delegate-2.0.1.gem", "rubysl-digest-2.0.8.gem", "rubysl-drb-2.0.1.gem", "rubysl-e2mmap-2.0.0.gem", "rubysl-english-2.0.0.gem", "rubysl-enumerator-2.0.0.gem", "rubysl-erb-2.0.2.gem", "rubysl-etc-2.0.3.gem", "rubysl-expect-2.0.0.gem", "rubysl-fcntl-2.0.4.gem", "rubysl-fiber-2.0.0.gem", "rubysl-fileutils-2.0.3.gem", "rubysl-find-2.0.1.gem", "rubysl-forwardable-2.0.1.gem", "rubysl-getoptlong-2.0.0.gem", "rubysl-gserver-2.0.0.gem", "rubysl-io-console-2.0.0.gem", "rubysl-io-nonblock-2.0.0.gem", "rubysl-io-wait-2.0.0.gem", "rubysl-ipaddr-2.0.0.gem", "rubysl-irb-2.1.1.gem", "rubysl-logger-2.1.0.gem", "rubysl-mathn-2.0.0.gem", "rubysl-matrix-2.1.0.gem", "rubysl-mkmf-2.1.gem", "rubysl-monitor-2.0.0.gem", "rubysl-mutex_m-2.0.0.gem", "rubysl-net-ftp-2.0.1.gem", "rubysl-net-http-2.0.4.gem", "rubysl-net-imap-2.0.1.gem", "rubysl-net-pop-2.0.1.gem", "rubysl-net-protocol-2.0.1.gem", "rubysl-net-smtp-2.0.1.gem", "rubysl-net-telnet-2.0.0.gem", "rubysl-nkf-2.0.1.gem", "rubysl-observer-2.0.0.gem", "rubysl-open-uri-2.0.0.gem", "rubysl-open3-2.0.0.gem", "rubysl-openssl-2.9.gem", "rubysl-optparse-2.0.1.gem", "rubysl-ostruct-2.1.0.gem", "rubysl-pathname-2.3.gem", "rubysl-prettyprint-2.0.3.gem", "rubysl-prime-2.0.1.gem", "rubysl-profile-2.0.0.gem", "rubysl-profiler-2.1.gem", "rubysl-pstore-2.0.0.gem", "rubysl-pty-2.0.3.gem", "rubysl-rational-2.0.1.gem", "rubysl-readline-2.0.2.gem", "rubysl-resolv-2.1.2.gem", "rubysl-rexml-2.0.4.gem", "rubysl-rinda-2.0.1.gem", "rubysl-rss-2.0.0.gem", "rubysl-scanf-2.0.0.gem", "rubysl-securerandom-2.0.0.gem", "rubysl-set-2.0.1.gem", "rubysl-shellwords-2.0.0.gem", "rubysl-singleton-2.0.0.gem", "rubysl-socket-2.2.1.gem", "rubysl-stringio-2.1.0.gem", "rubysl-strscan-2.0.0.gem", "rubysl-sync-2.0.0.gem", "rubysl-syslog-2.1.0.gem", "rubysl-tempfile-2.0.1.gem", "rubysl-test-unit-2.0.3.gem", "rubysl-thread-2.0.3.gem", "rubysl-thwait-2.0.0.gem", "rubysl-time-2.0.3.gem", "rubysl-timeout-2.0.0.gem", "rubysl-tmpdir-2.0.1.gem", "rubysl-tsort-2.0.1.gem", "rubysl-un-2.0.0.gem", "rubysl-unicode_normalize-2.0.gem", "rubysl-uri-2.0.0.gem", "rubysl-weakref-2.0.0.gem", "rubysl-webrick-2.0.0.gem", "rubysl-xmlrpc-2.0.0.gem", "rubysl-yaml-2.1.0.gem", "rubysl-zlib-2.0.1.gem"]
  config[:program_name] = "rbx"
  config[:bin_links] = ["ruby", "rake", "gem", "irb", "rdoc", "ri", "erb"]
  config[:use_bin_links] = true
  config[:rpath] = true
  config[:windows] = false
  config[:darwin] = false
  config[:bsd] = false
  config[:linux] = true
  config[:vendor_zlib] = false
  config[:vendor_libsodium] = true
  config[:vm_release_h] = "/home/travis/build/rubinius/rubinius-build/rubinius-3.79/machine/gen/release.h"
  config[:bootstrap_gems] = ["ffi2-generators", "rubysl-etc", "rubysl-fileutils", "rubysl-mkmf", "rubysl-shellwords", "rubysl-date", "rubysl-delegate", "rubysl-digest", "rubysl-etc", "rubysl-fcntl", "rubysl-fileutils", "rubysl-io-nonblock", "rubysl-monitor", "rubysl-openssl", "rubysl-optparse", "rubysl-stringio", "rubysl-strscan", "rubysl-tempfile", "rubysl-thread", "rubysl-tmpdir", "rubysl-uri", "rubysl-yaml", "rubysl-zlib", "psych"]
  config[:runtime_gems] = ["rubinius-ast", "rubinius-compiler", "rubinius-melbourne", "rubinius-processor", "rubinius-toolset"]
  config[:ruby_version] = "2.3.1"
  config[:ruby_libversion] = 23

  if Rubinius.constants.map { |x| x.to_s }.include?("BUILD_CONFIG")
    self::BUILD_CONFIG.replace config
  else
    self::BUILD_CONFIG = config
  end
end
