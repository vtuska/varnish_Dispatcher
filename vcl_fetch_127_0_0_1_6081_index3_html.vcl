sub vcl_fetch_127_0_0_1_6081_index3_html {
	set beresp.http.X-CACHE-vcl_fetch = "TEST-3";
}
