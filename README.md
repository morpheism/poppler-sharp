Poppler-sharp
=============

This project generates managed bindings for
[Poppler](http://poppler.freedesktop.org/) using the GAPI tools.

Building
--------

1. Install Poppler and any dependencies. You probably want to make sure that
   Poppler will be built with support for Cairo output.
2. Run ./configure, or if it does not exist, ./autogen.sh to create the Makefile
3. (Optional) When doing step 2, pass the argument --with-poppler-glib-dir=<DIR>
   where <DIR> is the path to your copy of the poppler/glib source directory.
4. Run `make` in the terminal.
5. You should find the library at `poppler-sharp.dll`.

Steps 2 and 3 are optional, but encouraged to ensure the interface matches your
version of Poppler.

Future
------

I only tested this on Linux, so I have no idea how portable it is.

License
-------

Poppler is licensed under the GPL version 2 or later and the same applies to
to Poppler-sharp.
