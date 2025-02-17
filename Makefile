NAME=Bash : EXE-Tools
PKGNAME=bash_exetools
SRC=src/$(PKGNAME)
DSTOPT=/opt/local/scripts
BINOPT=/opt/local/shell
DSTUSR=/usr/local/scripts
BINUSR=/usr/local/bin

T1=findexe
T2=lsexe


cleanup:
	rm -rf $(DSTUSR)/$(PKGNAME)/$(T1).sh
	rm -rf $(BINUSR)/$(T1)
	rm -rf $(DSTUSR)/$(PKGNAME)/$(T2).sh
	rm -rf $(BINUSR)/$(T2)
	rm -rf $(DSTOPT)/$(PKGNAME)/$(T1).sh
	rm -rf $(BINOPT)/$(T1)
	rm -rf $(DSTOPT)/$(PKGNAME)/$(T2).sh
	rm -rf $(BINOPT)/$(T2)

installcom:cleanup
	chmod 775   $(SRC)/$(T1).sh
	chmod 775   $(SRC)/$(T2).sh

install-opt:installcom
	install -vD $(SRC)/$(T1).sh $(DSTOPT)/$(PKGNAME)/$(T1).sh
	install -vD $(SRC)/$(T2).sh $(DSTOPT)/$(PKGNAME)/$(T2).sh
	ln -s $(DSTOPT)/$(PKGNAME)/$(T1).sh $(BINOPT)/$(T1)
	ln -s $(DSTOPT)/$(PKGNAME)/$(T2).sh $(BINOPT)/$(T2)
install-usr:installcom
	install -vD $(SRC)/$(T1).sh $(DSTUSR)/$(PKGNAME)/$(T1).sh
	install -vD $(SRC)/$(T2).sh $(DSTUSR)/$(PKGNAME)/$(T2).sh
	ln -s $(DSTUSR)/$(PKGNAME)/$(T1).sh $(BINUSR)/$(T1)
	ln -s $(DSTUSR)/$(PKGNAME)/$(T2).sh $(BINUSR)/$(T2)
uninstall-usr:
	rm -rvf $(DSTUSR)/$(PKGNAME)/$(T1).sh
	rm -rvf $(BINUSR)/$(T1)
	rm -rvf $(DSTUSR)/$(PKGNAME)/$(T2).sh
	rm -rvf $(BINUSR)/$(T2)
uninstall-opt:
	rm -rvf $(DSTOPT)/$(PKGNAME)/$(T1).sh
	rm -rvf $(BINOPT)/$(T1)
	rm -rvf $(DSTOPT)/$(PKGNAME)/$(T2).sh
	rm -rvf $(BINOPT)/$(T2)


install:install-usr
uninstall:uninstall-usr
