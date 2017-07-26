version = 0.1.0
description = Generate beautiful slides from asciidoc files

all: deb

deb:
	rm -fr build
	mkdir -p build/usr/bin
	mkdir -p build/usr/share/zdeck/
	cp -a scripts stylesheets tmpl build/usr/share/zdeck/
	cp zdeck-init.sh build/usr/bin/zdeck-init

	fpm -s dir -t deb -n zdeck		\
		-v $(version)			\
		-C build			\
		-a noarch			\
		-d asciidoc			\
		-d dia				\
		--description "$(description)"	\
		--maintainer code@zilogic.com	\
		.

clean:
	rm -fr build
	rm -fr *.deb

distclean: clean
	find . -name "*~" -delete
