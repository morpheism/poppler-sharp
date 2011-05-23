#!/bin/sh

aclocal -I /usr/share/aclocal -I m4
automake -ac
autoconf
[ -z "$NOCONFIGURE" ] && ./configure "$@"
