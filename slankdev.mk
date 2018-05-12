
CFLAGS  += -I.
CFLAGS  += `pkg-config --cflags wireshark`
CFLAGS  += `pkg-config --cflags glib-2.0`
LDFLAGS += \
	capchild/libcapchild.a \
	caputils/libcaputils.a \
	ui/cli/libcliui.a		   \
	ui/libui.a
LDFLAGS += `pkg-config --libs wireshark`
LDFLAGS += `pkg-config --libs glib-2.0`
LDFLAGS += -lwiretap -lwsutil -lz -lm -lpcap -L/lib64
SRC = \
	tshark.c \
	version_info.c \
	cfile.c			\
	capture_opts.c \
	file_packet_provider.c	\
	frame_tvbuff.c		\
	sync_pipe_write.c	\
	extcap.c		\
	extcap_parser.c		\
	extcap_spawn.c
OBJ = $(SRC:.c=.o)

all: $(OBJ)
	@echo linking...
	gcc $(CFLAGS) $(OBJ) $(LDFLAGS) $(LIBS)

dum:
	echo slank

clean:
	rm $(OBJ)

