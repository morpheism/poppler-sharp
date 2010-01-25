# -*- makefile-automake -*-

EXTRA_DIST = \
	poppler-sharp/poppler-api.raw \
	poppler-sharp/poppler.metadata \
	poppler-sharp/Document.cs

GENSOURCES = poppler-sharp/generated/*

CLEANFILES = \
	$(GENSOURCES) \
	poppler-sharp/poppler-api.xml \
	poppler-sharp.dll

pkglib_DATA = poppler-sharp.dll
pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = sources/poppler-sharp.pc

if ENABLE_AUTOGEN_API
poppler-sharp/poppler-api.raw: sources/poppler-sharp.sources
	gapi2-parser $<
endif

poppler-sharp/poppler-api.xml: poppler-sharp/poppler-api.raw \
                               poppler-sharp/poppler.metadata
	[ -d $(dir $@) ] || mkdir -p $(dir $@)
	cp $< $@
	chmod u+w $@
	gapi2-fixup \
		--api=$@ \
		--metadata=$(lastword $^)

$(GENSOURCES): poppler-sharp/poppler-api.xml
	gapi2-codegen \
		--outdir=poppler-sharp/generated $(GTKSHARP_CFLAGS) \
		--generate $<
	sed -i -re \
		's/(\s*)public\s+class\s+Document/\1public partial class Document/' \
		poppler-sharp/generated/Document.cs

poppler-sharp.dll: poppler-sharp/Document.cs $(GENSOURCES)
	$(MCS) \
		-pkg:gtk-sharp-2.0 \
		-r:Mono.Cairo \
		-t:library \
		-out:$@ \
		-unsafe \
		$(GENSOURCES) \
		$<
