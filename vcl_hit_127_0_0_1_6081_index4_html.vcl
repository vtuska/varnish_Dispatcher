sub vcl_hit_127_0_0_1_6081_index4_html {
	set req.http.X-CACHE-vcl_hit = "TEST-4";
}
