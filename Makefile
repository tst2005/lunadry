
all:
	cd lua && make linux && make install
	cd lpeg && make && cp lpeg.so re.lua ../root/lib/lua/5.2/

clean:
	cd lua && make clean
	cd lpeg && rm lpeg.so
	rm -rf root && mkdir root
