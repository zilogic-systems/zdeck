version = 0.1.0
description = Generate beautiful slides from asciidoc files

all: deb

home-install: install-dir = ~/.local
home-install: install
	echo > ~/.zdeck
	echo "# Auto-generated file, do not modify" >> ~/.zdeck
	echo "# If you want to use the system wide version" >> ~/.zdeck
	echo "# delete this file." >> ~/.zdeck
	echo "" >> ~/.zdeck
	echo "ZDECK_HOME = ~/.local/share/zdeck" > ~/.zdeck

install:
	mkdir -p $(install-dir)/share/zdeck/
	cp -a scripts stylesheets tmpl $(install-dir)/share/zdeck/
	mkdir -p ~/.local/bin
	cp -a zdeck-init.sh $(install-dir)/bin/zdeck-init

clean-deb:
	rm -fr build

deb: install-dir = build/usr
deb: clean-deb install
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
