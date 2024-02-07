install:
	install -D src/bash_exetools/findexe.sh  /opt/local/scripts/bash_exetools/findexe.sh
	install -D src/bash_exetools/lsexe.sh  /opt/local/scripts/bash_exetools/lsexe.sh
 	ln -sv /opt/local/scripts/bash_exetools/findexe.sh /usr/bin/findexe
 	ln -sv /opt/local/scripts/bash_exetools/lsexe.sh /usr/bin/lsexe

uninstall:
	rm -v /opt/local/scripts/bash_exetools/findexe.sh
	rm -v /opt/local/scripts/bash_exetools/lsexe.sh
	rm -v /usr/bin/findexe
	rm -v /usr/bin/lsexe
