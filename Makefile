NAME := lua-format

release:
	mkdir "$(PWD)/.release"
	svn export $(PWD) "$(PWD)/.release/$(NAME)"
	cd "$(PWD)/.release/$(NAME)" && tar cjf "$(PWD)/$(NAME).tar.bz2" .
	rm -rf "$(PWD)/.release"
