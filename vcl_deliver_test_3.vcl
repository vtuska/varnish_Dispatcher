if ( req.http.host ~ "127.0.0.1:6081" && req.url ~ "/index3.html" ) {
	set resp.http.X-CACHE-vcl_deliver = "TEST-3";
}
