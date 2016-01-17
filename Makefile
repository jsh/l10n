SHELL := /bin/bash
export LANG := en_ES

all: hello po/hello.pot t

distclean:
	git clean -dfx

hello: hello.c
	cc $< -o $@

po/hello.pot: hello.c
	[ -d po ] || mkdir po
	xgettext -d hello -o $@ -k_ -s $<

t:
	t/hello.t

.PHONY: all distclean t
