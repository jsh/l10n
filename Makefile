SHELL := /bin/bash
export LANG := en_ES

all: hello po/hello.pot test

distclean:
	git clean -dfx

hello: hello.c
	cc $< -o $@

i18n-demo:
	sudo make -C po/es install
	po/es/ubuntu.conf

po/hello.pot: hello.c
	[ -d po ] || mkdir po
	xgettext -d hello -o $@ -k_ -s $<

test: i18n-demo
	t/hello.t

.PHONY: all distclean i18n-demo
