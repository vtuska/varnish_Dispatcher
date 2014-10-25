sub vcl_recv_127_0_0_1_6081_index2_html {
        if (req.http.host ~ "127.0.0.1") {
                set req.url = "/index2.html";
        }
}
