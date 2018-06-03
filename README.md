
# Shape-up tshark repository

MacOS's required package
```
$ brew install libgcrypt GLib
```

Ubuntu's required package
```
$ sudo apt install \
  autoconf build-essential libtool    \
  libtool libtool-bin libgcrypt-dev   \
  bison flex libgtk-3-dev  libqt4-dev \
  libpcap-dev

or

$ sudo apt install \
  autoconf build-essential libtool    \
  libtool libtool-bin libgcrypt-dev   \
  bison flex libpcap-dev
```

```
$ git clone <repo> && cd <repo>
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
```

