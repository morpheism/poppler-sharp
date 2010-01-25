#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.64])
AC_INIT([poppler-sharp], [0.0.1], [hyperar@ubuntu.com])
AM_INIT_AUTOMAKE([-Wall foreign dist-bzip2 tar-ustar])

PKG_CHECK_MODULES([GTKSHARP], [gtk-sharp-2.0])
AC_ARG_WITH([poppler-glib-dir],
            [AC_HELP_STRING([--with-poppler-glib-dir=DIR],
                            [glib folder in poppler source directory])],
            [POPPLER_GLIB_DIR="$withval"
             enable_autogen_api=yes],
            [enable_autogen_api=no])
AC_SUBST([POPPLER_GLIB_DIR])
AM_CONDITIONAL(ENABLE_AUTOGEN_API, test "$enable_autogen_api" = "yes")

AC_PATH_PROG([MCS], [gmcs], [no])
if [[ ${MCS} = "no" ]]; then
    AC_MSG_ERROR([You need to install gmcs])
fi
AC_CONFIG_FILES([
    Makefile
    sources/poppler-sharp.sources
])
AC_OUTPUT
