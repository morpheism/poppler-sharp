#!/bin/bash

dir="$(dirname "$0")"
pushd "$dir"
aclocal -I /usr/share/aclocal -I m4
automake -ac
autoconf
popd
[ -z "$NOCONFIGURE" ] && "$dir/configure" "$@"
