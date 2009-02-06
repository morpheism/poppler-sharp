
all:
	cp poppler-sharp/poppler-api.raw poppler-sharp/poppler-api.xml
	gapi2-fixup --api=poppler-sharp/poppler-api.xml --metadata=poppler-sharp/poppler.metadata
	gapi2-codegen --outdir=poppler-sharp/generated --generate poppler-sharp/poppler-api.xml
	gmcs -pkg:gtk-sharp-2.0 -r:Mono.Cairo -t:library -out:poppler-sharp/poppler-sharp.dll -unsafe poppler-sharp/generated/*.cs

init:
	gapi2-parser sources/poppler-sharp.sources

clean:
	rm -rf poppler-sharp/generated
	rm -f poppler-sharp/poppler-api.xml
