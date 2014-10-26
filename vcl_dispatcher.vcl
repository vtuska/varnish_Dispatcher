C{
#include <syslog.h>
#include <string.h>
#include <stdlib.h>
#define __USE_GNU
#include <search.h>

	typedef void (*_VGC_Function)(struct sess *sp);

	typedef struct worker {
		_VGC_Function func;
		int flag;
	} Worker;

	typedef struct dispatcher {
		char* url;
		Worker worker;
	} Dispatcher;

	Dispatcher dispatcher[] = {

{"1_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index1_html, 129} },
{"1_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index2_html, 129} },
{"1_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index3_html, 129} },
{"1_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index4_html, 129} },
{"2_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index1_html, 129} },
{"2_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index2_html, 129} },
{"2_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index3_html, 129} },
{"2_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index4_html, 129} },
{"4_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index1_html, 129} },
{"4_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index2_html, 129} },
{"4_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index3_html, 129} },
{"4_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index4_html, 129} },
{"8_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index1_html, 129} },
{"8_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index2_html, 129} },
{"8_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index3_html, 129} },
{"8_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index4_html, 129} },
{"16_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index1_html, 129} },
{"16_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index2_html, 129} },
{"16_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index3_html, 129} },
{"16_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index4_html, 129} },
{"32_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index1_html, 129} },
{"32_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index2_html, 129} },
{"32_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index3_html, 129} },
{"32_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index4_html, 129} },
{"64_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index1_html, 129} },
{"64_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index2_html, 129} },
{"64_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index3_html, 129} },
{"64_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index4_html, 129} },
{"128_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index1_html, 129} },
{"128_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index2_html, 129} },
{"128_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index3_html, 129} },
{"128_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index4_html, 129} },
{"256_127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index1_html, 129} },
{"256_127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index2_html, 129} },
{"256_127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index3_html, 129} },
{"256_127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index4_html, 129} },

	};

int dispatcher_init() {
	ENTRY *ep;
	ENTRY e;
	int i,MAX=4*9,rc;

	openlog ("myvarnish", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);

	rc = hcreate(MAX);
	if (rc) {
		for(i=0;i<MAX;i++) { 
			e.key = dispatcher[i].url; e.data = &dispatcher[i].worker; ep=hsearch(e, ENTER); 
			if ( ep == NULL ) {
				syslog (LOG_INFO, "hash_init() -error- %u %s", (unsigned)time(NULL), e.key);
			}
		}
	}
	return 0;
}

int dispatcher_search(struct sess *sp, int prefix) {
	ENTRY *ep;
	ENTRY e;
	Worker *worker;
	_VGC_Function func;

	int i, url_len, buf_len;

	char *host;
	char *url;
	char buf[256];
	char buf_flag[8];
	int flag;
	char *hdr_flag;

	if ( prefix != 1 ) {
		hdr_flag = VRT_GetHdr(sp, HDR_REQ, "\007X-flag:");
		if ( hdr_flag != NULL ) {
			flag = atoi(hdr_flag);
			if ( !(prefix&flag) ) {
				return 0;
			}
		} else {
			return 0;
		}
	}

	host = VRT_GetHdr(sp, HDR_REQ, "\005Host:");
	url = VRT_r_req_url(sp);
	buf_len = snprintf(buf, sizeof buf, "%d_%s%s", prefix, host, url);

	e.key = buf;
	ep=hsearch(e, FIND);
	if (ep != NULL ) {
		worker=(Worker *)ep->data;
		func=worker->func;
		if (func != NULL) {
			snprintf(buf_flag, sizeof buf_flag, "%d", worker->flag);
			if ( prefix == 1 ) {
				VRT_SetHdr(sp, HDR_REQ, "\007X-flag:", buf_flag, vrt_magic_string_end);
			}
			func(sp);
			return 0;
		}
	} else {
		url_len = strlen(url);
		for(i=buf_len;i>(buf_len-url_len);i--) {
			if (buf[i] == '/') {
				buf[i] = '\0';
				e.key = buf;
				ep=hsearch(e, FIND);
				if (ep != NULL ) {
					worker=(Worker *)ep->data;
					func=worker->func;
					if (func != NULL) {
						snprintf(buf_flag, sizeof buf_flag, "%d", worker->flag);
						if ( prefix == 1 ) {
							VRT_SetHdr(sp, HDR_REQ, "\007X-flag:", buf_flag, vrt_magic_string_end);
						}
						func(sp);
						return 0;
					}
				}

			}
		}
	}

	return 0;
}
}C
