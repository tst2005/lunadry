NAME := lua-format

all:
	cd lua && make linux && make install
	cd lpeg && make && cp lpeg.so re.lua ../root/lib/lua/5.2/

clean:
	cd lua && make clean
	cd lpeg && rm -f lpeg.so
	rm -rf root/*

release:
	D="$$(mktemp -d)" && ln -s "$(PWD)" "$$D/$(NAME)" && cd "$$D" && tar cjf "$(PWD)/$(NAME).tar.bz2" $$(find $(NAME)/ \( -name '.?*' -or -name $(NAME).tar.bz2 \) -prune -or \( -type f -or -type l \) -print) && cd "$(PWD)" && rm -rf "$$D"

