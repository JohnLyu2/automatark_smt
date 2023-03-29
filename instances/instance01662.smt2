(declare-const X String)
; \x2Fcgi\x2Flogurl\.cgi.*User-Agent\x3A.*Host\x3Awww\x2EZSearchResults\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:www.ZSearchResults.com\u{13}\u{a}"))))
(check-sat)

(exit)
