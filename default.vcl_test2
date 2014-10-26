# 1	sub vcl_recv 
# 2	sub vcl_pipe 
# 4	sub vcl_pass 
# 8	sub vcl_hash 
# 16	sub vcl_hit 
# 32	sub vcl_miss 
# 64	sub vcl_fetch 
# 128	sub vcl_deliver 
# 256	sub vcl_error 

backend default {
    .host = "127.0.0.1";
    .port = "80";
}

include "vcl_dispatcher.vcl";
include "vcl_recv.vcl";
include "vcl_pipe.vcl";
include "vcl_pass.vcl";
include "vcl_hash.vcl";
include "vcl_hit.vcl";
include "vcl_miss.vcl";
include "vcl_fetch.vcl";
include "vcl_deliver.vcl";
include "vcl_error.vcl";

sub vcl_init {
	include "vcl_init.vcl";
}

sub vcl_recv {
	include "vcl_recv_functions.vcl";
#	include "vcl_recv_test.vcl";
}

sub vcl_pipe {
	include "vcl_pipe_functions.vcl";
#	include "vcl_pipe_test.vcl";
}

sub vcl_pass {
	include "vcl_pass_functions.vcl";
#	include "vcl_pass_test.vcl";
}

sub vcl_hash {
	include "vcl_hash_functions.vcl";
#	include "vcl_hash_test.vcl";
}

sub vcl_hit {
	include "vcl_hit_functions.vcl";
#	include "vcl_hit_test.vcl";
}

sub vcl_miss {
	include "vcl_miss_functions.vcl";
#	include "vcl_miss_test.vcl";
}

sub vcl_fetch {
	include "vcl_fetch_functions.vcl";
#	include "vcl_fetch_test.vcl";
}

sub vcl_deliver {
	include "vcl_deliver_functions.vcl";
#	include "vcl_deliver_test.vcl";
}

sub vcl_error {
	include "vcl_error_functions.vcl";
#	include "vcl_error_test.vcl";
}

