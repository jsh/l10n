all: hello.mo

%.mo: %.po
	msgfmt $< -o $@

install: hello.mo
	install -m 644 $< /usr/share/locale/es/LC_MESSAGES
