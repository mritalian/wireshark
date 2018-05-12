
CFLAGS  += -I..
CFLAGS  += `pkg-config --cflags wireshark`
CFLAGS  += `pkg-config --cflags glib-2.0`

LDFLAGS += ../ui/libui.a

LDFLAGS += `pkg-config --libs wireshark`
LDFLAGS += `pkg-config --libs glib-2.0`
LDFLAGS += -lwiretap -lwsutil -lz -lm -lpcap
SRC = \
	capchild/capture_ifinfo.c  \
	capchild/capture_sync.c    \
	caputils/airpcap_loader.c         \
	caputils/capture-pcap-util-unix.c \
	caputils/capture-pcap-util.c      \
	caputils/iface_monitor.c          \
	caputils/ws80211_utils.c          \
	tshark.c                \
	version_info.c          \
	cfile.c			            \
	capture_opts.c          \
	file_packet_provider.c	\
	frame_tvbuff.c		      \
	sync_pipe_write.c	      \
	extcap.c		            \
	extcap_parser.c		      \
	extcap_spawn.c
OBJ = $(SRC:.c=.o)

all: $(OBJ)
	@echo linking...
	gcc $(CFLAGS) $(OBJ) $(LDFLAGS)

dum:
	echo slank

clean:
	rm -f $(OBJ)

run:
	sudo ./a.out -i lo -Y "icmp"

