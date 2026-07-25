install:
	mkdir -p /usr/local/bin
	mkdir -p /usr/local/share/man/man1/
	gzip -k chart.1
	cp -f chart /usr/local/bin/chart
	mv -f chart.1.gz /usr/local/share/man/man1/chart.1.gz
	
install-user:
	mkdir -p ~/.local/bin
	mkdir -p ~/.local/share/man/man1/
	gzip -k chart.1
	cp -f chart ~/.local/bin/chart
	mv -f chart.1.gz ~/.local/share/man/man1/chart.1.gz
	
uninstall:
	rm -f /usr/local/bin/chart
	rm -f /usr/local/share/man/man1/chart.1.gz

uninstall-user:
	rm -f ~/.local/bin/chart
	rm -f ~/.local/share/man/man1/chart.1.gz
