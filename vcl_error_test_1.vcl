if ( req.http.host ~ "127.0.0.1:6081" && req.url ~ "/index1.html" ) {
	set obj.http.X-CACHE-vcl_error = "TEST-1";
}
