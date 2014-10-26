if ( req.http.host ~ "127.0.0.1:6081" && req.url ~ "/index3.html" ) {
	set req.http.X-CACHE-vcl_pass = "TEST-3";
}
