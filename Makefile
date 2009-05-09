
all:
	cp poppler-sharp/poppler-api.raw poppler-sharp/poppler-api.xml
	gapi2-fixup --api=poppler-sharp/poppler-api.xml --metadata=poppler-sharp/poppler.metadata
	gapi2-codegen --outdir=poppler-sharp/generated `pkg-config --cflags gtk-sharp-2.0` --generate poppler-sharp/poppler-api.xml
	mv poppler-sharp/generated/Document.cs poppler-sharp/generated/Document.input
	sed -r 's/(\s*)public\s+class\s+Document/\1public partial class Document/' poppler-sharp/generated/Document.input > poppler-sharp/generated/Document.cs
	rm poppler-sharp/generated/Document.input
	gmcs -pkg:gtk-sharp-2.0 -r:Mono.Cairo -t:library -out:poppler-sharp/poppler-sharp.dll -unsafe poppler-sharp/generated/*.cs poppler-sharp/Document.cs

init:
	gapi2-parser sources/poppler-sharp.sources

clean:
	rm -rf poppler-sharp/generated
	rm -f poppler-sharp/poppler-api.xml
