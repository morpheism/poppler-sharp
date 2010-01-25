#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.64])
AC_INIT([poppler-sharp], [0.0.1], [hyperar@ubuntu.com])
AM_INIT_AUTOMAKE([-Wall foreign dist-bzip2 tar-ustar])

PKG_CHECK_MODULES([POPPLER], [poppler-glib])
PKG_CHECK_MODULES([GTKSHARP], [gtk-sharp-2.0])
POPPLER_GLIB_DIR=$($PKG_CONFIG --cflags poppler-glib | grep -o -- -I.\*poppler/glib | sed -e 's/-I//');
AC_SUBST([POPPLER_GLIB_DIR])

AC_PATH_PROG([MCS], [gmcs], [no])
if [[ ${MCS} = "no" ]]; then
    AC_MSG_ERROR([You need to install gmcs])
fi
AC_CONFIG_FILES([
    Makefile
    sources/poppler-sharp.sources
])
AC_OUTPUT
