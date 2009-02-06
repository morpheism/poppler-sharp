Poppler-sharp
=============

This project generates managed bindings for
[Poppler](http://poppler.freedesktop.org/) using the GAPI tools.

Building
--------

1. Install Poppler and any dependencies. You probably want to make sure that
   Poppler will be built with support for Cairo output.
2. Edit `sources/poppler-sharp.sources` and set the value of `<dir>` to the
   path to your copy of the `poppler/glib` source directory.
3. Run `make` in a terminal.
4. You should find the library at `poppler-sharp/poppler-sharp.dll`.

Future
------

I only tested this on Linux, so I have no idea how portable it is.

License
-------

Poppler is licensed under the GPL version 2 or later and the same applies to
to Poppler-sharp.
