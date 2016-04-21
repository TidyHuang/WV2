#!/bin/sh
# Run this to generate all the initial makefiles, etc.

# This file adapted from Gnumeric's autogen.sh

(libtoolize --version) < /dev/null > /dev/null 2>&1 || {
	echo "**Error**: You must have \`libtoolize' installed to compile wv2."
	echo "Download the appropriate package for your distribution,"
	echo "or get the source tarball at ftp://ftp.gnu.org/pub/gnu/libtool"
	exit 1
}

(autoconf --version) < /dev/null > /dev/null 2>&1 || {
	echo "**Error**: You must have \`autoconf' installed to compile wv2."
	echo "Download the appropriate package for your distribution,"
	echo "or get the source tarball at ftp://ftp.gnu.org/pub/gnu/autoconf"
	exit 1
}

(automake --version) < /dev/null > /dev/null 2>&1 || {
	echo "**Error**: You must have \`automake' installed to compile wv2."
	echo "Download the appropriate package for your distribution,"
	echo "or get the source tarball at ftp://ftp.gnu.org/pub/gnu/automake"
	exit 1
}

(aclocal --version) < /dev/null > /dev/null 2>&1 || {
	echo "**Error**: Missing \`aclocal'.  The version of \`automake'"
	echo "installed doesn't appear recent enough."
	echo "Download the appropriate package for your distribution,"
	echo "or get the source tarball at ftp://ftp.gnu.org/pub/gnu/automake"
	exit 1
}

echo "Running: libtoolize"
libtoolize --force --copy || {
	echo "**Error**: libtoolize failed.";
	exit 1;
}

case $CC in
xlc )
	am_opt=--include-deps;;
esac

echo "Running: aclocal $ACLOCAL_FLAGS"
aclocal $ACLOCAL_FLAGS || {
	echo "**Error**: aclocal failed. This may mean that you have not"
	echo "installed all of the packages you need, or you may need to"
	echo "set ACLOCAL_FLAGS to include \"-I \$prefix/share/aclocal\""
	echo "for the prefix where you installed the packages whose"
	echo "macros were not found"
	exit 1
}

if grep "^AM_CONFIG_HEADER" configure.in > /dev/null; then
	echo "Running: autoheader"
	autoheader || {
		echo "**Error**: autoheader failed.";
		exit 1;
	}
fi

echo "Running: automake $am_opt"
automake --foreign --copy --add-missing $am_opt || {
	echo "**Error**: automake failed.";
	exit 1;
}

echo "Running: autoconf"
autoconf || {
	echo "**Error**: autoconf failed.";
	exit 1;
}

echo "    Don't forget to run ./configure"
echo "    If you haven't done so in a while, run ./configure --help"
