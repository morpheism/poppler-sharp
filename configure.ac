#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.64])
AC_INIT([poppler-sharp], [0.0.2], [jacinto.m.shy@gmail.com])
AM_INIT_AUTOMAKE([-Wall foreign dist-bzip2 tar-ustar])

PKG_CHECK_MODULES([GTKSHARP], [gtk-sharp-2.0])
PKG_CHECK_MODULES([GAPI], [gapi-2.0])
PKG_CHECK_MODULES([MONO], [mono])
AC_ARG_WITH([poppler-glib-dir],
            [AC_HELP_STRING([--with-poppler-glib-dir=DIR],
                            [glib folder in poppler source directory])],
            [POPPLER_GLIB_DIR="$withval"
             enable_autogen_api=yes],
            [enable_autogen_api=no])
AC_SUBST([POPPLER_GLIB_DIR])
AM_CONDITIONAL(ENABLE_AUTOGEN_API, test "$enable_autogen_api" = "yes")

SHAMROCK_FIND_MONO_2_0_COMPILER
SHAMROCK_CHECK_MONO_2_0_GAC_ASSEMBLIES(Mono.Cairo)

AC_CONFIG_FILES([
    Makefile
    sources/poppler-sharp.sources
    sources/poppler-sharp.pc
])
AC_OUTPUT
