if ( req.http.host ~ "127.0.0.1:6081" && req.url ~ "/index2.html" ) {
	set req.http.X-CACHE-vcl_hit = "TEST-2";
}
