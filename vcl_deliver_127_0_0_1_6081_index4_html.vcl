sub vcl_deliver_127_0_0_1_6081_index4_html {
        C{
        VRT_SetHdr(sp, HDR_RESP, "\007X-resp:", "testing...", vrt_magic_string_end);
        }C

        if (req.http.host ~ "127.0.0.1") {
                set resp.http.X-CACHE = "CACHE4";
        }
}
