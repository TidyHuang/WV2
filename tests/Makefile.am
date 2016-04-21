# Some "unit tests"
# To add "footest", please add it to the check_PROGRAMS line
# and add footest_SOURCES = footest.cpp ...

INCLUDES = 			\
	-I$(top_builddir)	\
	-I$(top_srcdir)/include	\
	@LIBGSF_CFLAGS@ 	\
	@WV_ICONV_CFLAGS@	\
	-I$(top_srcdir)/src

AM_CFLAGS = @WV_CFLAGS@ @CFLAGS@

AM_CXXFLAGS = @WV_CFLAGS@ @CXXFLAGS@

check_PROGRAMS = oletest word97_test word95_test \
	iconvtest parsertest parsertest_mem helpertest \
	ustringtest sharedptrtest handlertest

oletest_SOURCES = oletest.cpp
oletest_LDADD = $(top_builddir)/src/libwv2.la
oletest_LDFLAGS = @WV_LDFLAGS@

word97_test_SOURCES = word97_test.cpp
word97_test_LDADD = $(top_builddir)/src/libwv2.la
word97_test_LDFLAGS = @WV_LDFLAGS@

word95_test_SOURCES = word95_test.cpp
word95_test_LDADD = $(top_builddir)/src/libwv2.la
word95_test_LDFLAGS = @WV_LDFLAGS@

iconvtest_SOURCES = iconvtest.cpp
iconvtest_LDADD = $(top_builddir)/src/libwv2.la
iconvtest_LDFLAGS = @WV_LDFLAGS@

parsertest_SOURCES = parsertest.cpp
parsertest_LDADD = $(top_builddir)/src/libwv2.la
parsertest_LDFLAGS = @WV_LDFLAGS@

parsertest_mem_SOURCES = parsertest_mem.cpp
parsertest_mem_LDADD = $(top_builddir)/src/libwv2.la
parsertest_mem_LDFLAGS = @WV_LDFLAGS@

helpertest_SOURCES = helpertest.cpp
helpertest_LDADD = $(top_builddir)/src/libwv2.la
helpertest_LDFLAGS = @WV_LDFLAGS@

ustringtest_SOURCES = ustringtest.cpp
ustringtest_LDADD = $(top_builddir)/src/libwv2.la
ustringtest_LDFLAGS = @WV_LDFLAGS@

sharedptrtest_SOURCES = sharedptrtest.cpp
sharedptrtest_LDADD = $(top_builddir)/src/libwv2.la
sharedptrtest_LDFLAGS = @WV_LDFLAGS@

handlertest_SOURCES = handlertest.cpp
handlertest_LDADD = $(top_builddir)/src/libwv2.la
handlertest_LDFLAGS = @WV_LDFLAGS@
