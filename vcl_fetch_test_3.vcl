if ( req.http.host ~ "127.0.0.1:6081" && req.url ~ "/index3.html" ) {
	set beresp.http.X-CACHE-vcl_fetch = "TEST-3";
}
