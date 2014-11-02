C{
#include <syslog.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#define __USE_GNU
#include <search.h>

	typedef void (*_VGC_Function)(struct sess *sp);

	typedef struct worker {
		_VGC_Function func;
		unsigned int flag;
	} Worker;

	typedef struct dispatcher {
		char* url;
		Worker worker;
	} Dispatcher;

	//	vcl_recv	1
	//	vcl_pipe	2
	//	vcl_pass	4
	//	vcl_hash	8
	//	vcl_hit		16
	//	vcl_miss	32
	//	vcl_fetch	64
	//	vcl_deliver	128
	//	vcl_error	256
	struct hsearch_data *htab[9];

	Dispatcher dispatcher_vcl_recv[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_recv_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_pipe[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_pipe_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_pass[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_pass_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_hash[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_hash_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_hit[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_hit_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_miss[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_miss_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_fetch[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_fetch_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_deliver[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_deliver_127_0_0_1_6081_index4_html, 511} },
};
	Dispatcher dispatcher_vcl_error[] = {
{"127.0.0.1:6081/index1.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index1_html, 511} },
{"127.0.0.1:6081/index2.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index2_html, 511} },
{"127.0.0.1:6081/index3.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index3_html, 511} },
{"127.0.0.1:6081/index4.html", { (_VGC_Function)VGC_function_vcl_error_127_0_0_1_6081_index4_html, 511} },
};

	Dispatcher *dispatchers[] = {
				dispatcher_vcl_recv,
				dispatcher_vcl_pipe,
				dispatcher_vcl_pass,
				dispatcher_vcl_hash,
				dispatcher_vcl_hit,
				dispatcher_vcl_miss,
				dispatcher_vcl_fetch,
				dispatcher_vcl_deliver,
				dispatcher_vcl_error
};

int MAX[] = { 4,4,4,4,4,4,4,4,4 };

int idx_get(int n) {
	int idx=0;

	while(n) {
		idx++;
		if (n&1) {
			break;
		}
		n >>= 1;
	}
	return idx;
}

int dispatcher_init(struct sess *sp) {
	ENTRY *ep;
	ENTRY e;
	int i,j,rc;

	for(i=0; i<9; i++) {
                htab[i]=(struct hsearch_data *)calloc(1,sizeof(struct hsearch_data));

		rc = hcreate_r(MAX[i], htab[i]);
		if (rc) {
			for(j=0;j<MAX[i];j++) { 
				e.key = dispatchers[i][j].url; e.data = &dispatchers[i][j].worker; rc=hsearch_r(e, ENTER, &ep, htab[i]); 
				if (!rc) {
					openlog ("myvarnish", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);
					syslog(LOG_INFO, "Time: %.6f hash_init()/hsearch_r(ENTER) Error (%s)", VRT_r_now(sp), e.key);
				}
			}
		} else {
			openlog ("myvarnish", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);
			syslog(LOG_INFO, "Time: %.6f hash_init()/hcreate_r() Error", VRT_r_now(sp));
		}
	}
	return 0;
}

int dispatcher_search(struct sess *sp, unsigned int prefix) {
	ENTRY *ep;
	ENTRY e;
	Worker *worker;
	_VGC_Function func;

	int i, rc, idx, url_len, buf_len;

	char *host;
	const char *url;
	const char *client_identity;
	char buf[256];
	char buf_flag[8];
	unsigned int flag = 0;
	unsigned char s_flag[3] = { 0 };

	char *hdr_flag;

	if ( prefix != 1 ) {
//		client_identity = VRT_r_client_identity(sp);
//		flag = (unsigned int)client_identity[0]<<8|(unsigned char)client_identity[1];

		hdr_flag = VRT_GetHdr(sp, HDR_REQ, "\007X-flag:");
		if ( hdr_flag != NULL ) {
			flag = atoi(hdr_flag);
			if ( !(prefix&flag) ) {
				return 0;
			}
		} else {
			return 0;
		}

	} else {
		openlog ("myvarnish", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);
		syslog(LOG_INFO, "Time: %.6f hash_search() prefix1 (%s)", VRT_r_now(sp), VRT_r_client_identity(sp));

	}

	host = VRT_GetHdr(sp, HDR_REQ, "\005Host:");
	url = VRT_r_req_url(sp);
	buf_len = snprintf(buf, sizeof buf, "%s%s", host, url);

	e.key = buf;
	idx = idx_get(prefix);
	if (idx) {
		idx--;
	} else {
		return 0;
	}

	rc=hsearch_r(e, FIND, &ep, htab[idx]);
	if (rc) {
		worker=(Worker *)ep->data;
		func=worker->func;
		if (func != NULL) {
			if ( prefix == 1 ) {
				snprintf(buf_flag, sizeof buf_flag, "%d", worker->flag);
				VRT_SetHdr(sp, HDR_REQ, "\007X-flag:", buf_flag, vrt_magic_string_end);

//				s_flag[0] = (unsigned char)(worker->flag>>8);
//				s_flag[1] = (unsigned char)worker->flag;
//				s_flag[2] = (unsigned char)0;
//				VRT_l_client_identity(sp, s_flag, vrt_magic_string_end);
			}
			func(sp);
			return 0;
		}
	} else {
		url_len = strlen(url);
		for(i=buf_len;i>(buf_len-url_len);i--) {
			if (buf[i] == '/') {
				buf[i] = '\0';
				//e.key = buf;
				rc=hsearch_r(e, FIND, &ep, htab[idx]);
				if (rc) {
					worker=(Worker *)ep->data;
					func=worker->func;
					if (func != NULL) {
						if ( prefix == 1 ) {
							snprintf(buf_flag, sizeof buf_flag, "%d", worker->flag);
							VRT_SetHdr(sp, HDR_REQ, "\007X-flag:", buf_flag, vrt_magic_string_end);
//							s_flag[0] = (unsigned char)(worker->flag>>8);
//							s_flag[1] = (unsigned char)worker->flag;
//							s_flag[2] = (unsigned char)0;
							VRT_l_client_identity(sp, s_flag, vrt_magic_string_end);
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
