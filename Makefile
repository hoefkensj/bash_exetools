SRC=src/bash_exetools
DST=/opt/bash_exetools

install:
	chmod +x   $(SRC)/findexe.sh
	chmod +x   $(SRC)/lsexe.sh
	install -D $(SRC)/findexe.sh $(DST)/findexe.sh
	install -D $(SRC)/lsexe.sh   $(DST)/lsexe.sh

	ln -sv $(DST)/findexe.sh /usr/bin/findexe
	ln -sv $(DST)/lsexe.sh /usr/bin/lsexe

uninstall:
	rm -v $(DST)/findexe.sh
	rm -v $(DST)/lsexe.sh
	rm -v /usr/bin/findexe
	rm -v /usr/bin/lsexe
