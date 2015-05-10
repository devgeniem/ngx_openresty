.PHONY: all install clean

all:
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/LuaJIT-2.1-20150223 && $(MAKE) TARGET_STRIP=@: CCDEBUG=-g CC=cc PREFIX=/etc/luajit
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-cjson-2.1.0.2 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_CMODULE_DIR=/etc/lualib LUA_MODULE_DIR=/etc/lualib CJSON_CFLAGS="-g -fpic" CC=cc
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-redis-parser-0.10 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=cc
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-rds-parser-0.05 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=cc
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/nginx-1.7.10 && $(MAKE)

install: all
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/LuaJIT-2.1-20150223 && $(MAKE) install TARGET_STRIP=@: CCDEBUG=-g CC=cc PREFIX=/etc/luajit DESTDIR=$(DESTDIR)
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-cjson-2.1.0.2 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_CMODULE_DIR=/etc/lualib LUA_MODULE_DIR=/etc/lualib CJSON_CFLAGS="-g -fpic" CC=cc
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-redis-parser-0.10 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=cc
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-rds-parser-0.05 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=cc
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-dns-0.14 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-memcached-0.13 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-redis-0.20 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-mysql-0.15 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-string-0.09 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-upload-0.09 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-websocket-0.05 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-lock-0.04 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-lrucache-0.04 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-core-0.1.0 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/lua-resty-upstream-healthcheck-0.03 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/resty-cli-0.02 && /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/install resty $(DESTDIR)//etc/bin/
	cd /mnt/ebs0/home/vic/Workspace/needcaffeine/ngx_openresty-1.7.10.1/build/nginx-1.7.10 && $(MAKE) install DESTDIR=$(DESTDIR)

clean:
	rm -rf build
