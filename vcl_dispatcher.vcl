C{
#include <string.h>
#include <stdlib.h>
#define __USE_GNU
#include <search.h>

	typedef void (*_VGC_Function)(struct sess *sp);

	typedef struct dispatcher {
		char* url;
		_VGC_Function func;
	} Dispatcher;

	Dispatcher dispatcher[] = {
{"vcl_recv_127.0.0.1:6081/index1.html", (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index1_html},
{"vcl_deliver_127.0.0.1:6081/index1.html", (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index1_html},
{"vcl_recv_127.0.0.1:6081/index2.html", (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index2_html},
{"vcl_deliver_127.0.0.1:6081/index2.html", (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index2_html},
{"vcl_recv_127.0.0.1:6081/index3.html", (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index3_html},
{"vcl_deliver_127.0.0.1:6081/index3.html", (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index3_html},
{"vcl_recv_127.0.0.1:6081/index4.html", (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index4_html},
{"vcl_deliver_127.0.0.1:6081/index4.html", (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index4_html},
	};

int dispatcher_init() {
	ENTRY *ep;
	ENTRY e;
	int i,MAX=4*2,rc;

	rc = hcreate(MAX);
	if (rc) {
		for(i=0;i<MAX;i++) { 
			e.key = dispatcher[i].url; e.data = dispatcher[i].func; ep=hsearch(e, ENTER); 
		}
	}
	return 0;
}

int dispatcher_search(struct sess *sp, char *prefix) {
	ENTRY *ep;
	ENTRY e;
	_VGC_Function func;

	int i, url_len, buf_len;

	char *host;
	char *url;

	host = VRT_GetHdr(sp, HDR_REQ, "\005Host:");
	url = VRT_r_req_url(sp);
	url_len = strlen(url);

	char buf[256];
	buf_len = snprintf(buf, sizeof buf, "%s_%s%s", prefix, host, url);

	e.key = buf;
	ep=hsearch(e, FIND);
	if (ep != NULL ) {
		func=ep->data;
		if (func != NULL) {
			func(sp);
			return 0;
		}
	} else {
		for(i=buf_len;i>(buf_len-url_len);i--) {
			if (buf[i] == '/') {
				buf[i] = '\0';
				e.key = buf;
				ep=hsearch(e, FIND);
				if (ep != NULL ) {
					func=ep->data;
					if (func != NULL) {
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
