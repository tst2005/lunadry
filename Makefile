NAME := lua-format

all:
	cd lua && $(MAKE) INSTALL_TOP=$(PWD)/root linux install
	cd lpeg && $(MAKE) && cp lpeg.so re.lua ../root/lib/lua/5.2/

clean:
	cd lua && make clean
	cd lpeg && rm -f lpeg.so
	rm -rf root/*

release:
	mkdir "$(PWD)/.release"
	svn export $(PWD) "$(PWD)/.release/$(NAME)"
	cd "$(PWD)/.release/$(NAME)" && tar cjf "$(PWD)/$(NAME).tar.bz2" .
	rm -rf "$(PWD)/.release"
