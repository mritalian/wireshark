
CFLAGS  += -I../
CFLAGS  += -I../../
CFLAGS  += `pkg-config --cflags glib-2.0`
LDFLAGS += `pkg-config --libs glib-2.0`

SRC = \
	cli/tap-camelsrt.c         \
	cli/tap-comparestat.c      \
	cli/tap-diameter-avp.c     \
	cli/tap-endpoints.c        \
	cli/tap-expert.c           \
	cli/tap-exportobject.c     \
	cli/tap-flow.c             \
	cli/tap-follow.c           \
	cli/tap-funnel.c           \
	cli/tap-gsm_astat.c        \
	cli/tap-hosts.c            \
	cli/tap-httpstat.c         \
	cli/tap-icmpstat.c         \
	cli/tap-icmpv6stat.c       \
	cli/tap-iostat.c           \
	cli/tap-iousers.c          \
	cli/tap-macltestat.c       \
	cli/tap-protocolinfo.c     \
	cli/tap-protohierstat.c    \
	cli/tap-rlcltestat.c       \
	cli/tap-rpcprogs.c         \
	cli/tap-rtd.c              \
	cli/tap-rtp.c              \
	cli/tap-rtspstat.c         \
	cli/tap-sctpchunkstat.c    \
	cli/tap-simple_stattable.c \
	cli/tap-sipstat.c          \
	cli/tap-smbsids.c          \
	cli/tap-srt.c              \
	cli/tap-stats_tree.c       \
	cli/tap-sv.c               \
	cli/tap-wspstat.c          \
	cli/tshark-tap-register.c  \
	alert_box.c              \
	capture.c                \
	capture_ui_utils.c       \
	commandline.c            \
	console.c                \
	decode_as_utils.c        \
	dissect_opts.c           \
	export_object_ui.c       \
	export_pdu_ui_utils.c    \
	failure_message.c        \
	file_dialog.c            \
	filter_files.c           \
	firewall_rules.c         \
	help_url.c               \
	iface_lists.c            \
	iface_toolbar.c          \
	io_graph_item.c          \
	language.c               \
	make-taps.c              \
	mcast_stream.c           \
	packet_list_utils.c      \
	packet_range.c           \
	persfilepath_opt.c       \
	preference_utils.c       \
	profile.c                \
	proto_hier_stats.c       \
	recent.c                 \
	rtp_media.c              \
	rtp_stream.c             \
	service_response_time.c  \
	software_update.c        \
	ssl_key_export.c         \
	summary.c                \
	tap-iax2-analysis.c      \
	tap-rlc-graph.c          \
	tap-rtp-common.c         \
	tap-sctp-analysis.c      \
	tap-tcp-stream.c         \
	tap_export_pdu.c         \
	text_import.c            \
	text_import_scanner.c    \
	time_shift.c             \
	traffic_table_ui.c       \
	util.c                   \
	voip_calls.c
OBJ = $(SRC:.c=.o)

all: $(OBJ)
	ar rcs libui.a $(OBJ)

clean:
	rm -f $(OBJ) *.a

