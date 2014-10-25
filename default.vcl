#
import std;

backend default {
    .host = "127.0.0.1";
    .port = "80";
}

include "vcl_dispatcher.vcl";
include "vcl_recv.vcl";
include "vcl_deliver.vcl";

sub vcl_init {
	include "vcl_init.vcl";
}

sub vcl_recv {
	include "vcl_recv_functions.vcl";
#	include "vcl_recv_test.vcl";
}

sub vcl_error {
}

sub vcl_deliver {
	include "vcl_deliver_functions.vcl";
#	include "vcl_deliver_test.vcl";
}

