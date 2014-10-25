if (req.http.host ~ "127.0.0.1:6081" && req.url ~ "^/index2\.html$") {
        if (req.http.host ~ "127.0.0.1") {
                set req.url = "/index2.html";
        }
}
