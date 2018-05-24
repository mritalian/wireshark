
# Shape-up tshark repository

```
$ git clone <repo> && cd <repo>
$ sudo apt install \
  autoconf build-essential libtool    \
  libtool libtool-bin libgcrypt-dev   \
  bison flex libgtk-3-dev  libqt4-dev \
  libpcap-dev
$ ./autogen.sh
$ ./configure  \
  --enable-wireshark=false  \
	--enable-editcap=false    \
	--enable-mergecap=false   \
	--enable-text2cap=false   \
	--enable-sharkd=false     \
	--enable-captype=false    \
	--enable-reordercap=false \
	--enable-dftest=false     \
	--enable-randpkt=false    \
	--enable-rawshark=false   \
	--enable-tfshark=false    \
	--enable-fuzzshark=false  \
	--enable-androiddump=no   \
	--disable-guides
$ make
$ sudo make install
$ sudo .lib/tshark -i lo -Y "tcp.port == 80
```

