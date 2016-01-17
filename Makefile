all: hello po/hello.pot

hello: hello.c
	cc $< -o $@

po/hello.pot: hello.c
	[ -d po ] || mkdir po
	xgettext -d hello -o $@ -k_ -s $<

clean:
	rm -f hello
