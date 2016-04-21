DEFS = @DEFS@ -DPACKAGE=\"@PACKAGE@\" -DVERSION=\"@VERSION@\"

AM_CFLAGS = @WV_CFLAGS@ @CFLAGS@

AM_CXXFLAGS = @WV_CFLAGS@ @CXXFLAGS@

INCLUDES =			\
	-I$(top_srcdir)/include	\
	-I$(top_builddir)	\
	-I$(srcdir)		\
	@WV_CFLAGS@

lib_LTLIBRARIES = libwv2.la

libwv2_la_LIBADD = -lm $(WV_LDFLAGS)

libwv2_la_LDFLAGS = \
	-version-info $(LT_CURRENT):$(LT_REVISION):$(LT_AGE) \
	-export-dynamic

libwv2_la_SOURCES = olestorage.cpp olestream.cpp \
	word97_generated.cpp word97_helper.cpp word95_helper.cpp \
	word_helper.cpp word95_generated.cpp convert.cpp global.cpp \
	parser.cpp parser9x.cpp parser95.cpp parser97.cpp parserfactory.cpp \
	ustring.cpp textconverter.cpp styles.cpp handlers.cpp \
	properties97.cpp fonts.cpp lists.cpp paragraphproperties.cpp \
	headers.cpp headers95.cpp headers97.cpp footnotes97.cpp functor.cpp \
	functordata.cpp associatedstrings.cpp fields.cpp utilities.cpp \
	crc32.c wvlog.cpp

wvhdrdir = $(includedir)/wv2

wvhdr_HEADERS = olestorage.h olestream.h \
	word95_generated.h word97_generated.h word_helper.h parser.h \
	parserfactory.h ustring.h textconverter.h styles.h sharedptr.h \
	convert.h global.h handlers.h fonts.h lists.h utilities.h \
	paragraphproperties.h functor.h functordata.h associatedstrings.h \
	fields.h dllmagic.h wvlog.h
