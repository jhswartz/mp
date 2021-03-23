INSTALL   = install
PREFIX    = /usr/local
SITEFORTH = /usr/share/gforth/site-forth

install: mp mp.fs
	$(INSTALL) -m 644 mp.fs $(SITEFORTH)
	$(INSTALL) -m 755 mp    $(PREFIX)/bin

uninstall:
	$(RM) $(SITEFORTH)/mp.fs
	$(RM) $(PREFIX)/bin/mp
