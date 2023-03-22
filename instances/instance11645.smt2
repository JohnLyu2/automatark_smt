(declare-const X String)
; Host\x3AYOURcache\x2Eeverer\x2Ecomwww\x2Epurityscan\x2Ecom
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
; Host\x3A.*client\x2Ebaigoo\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "client.baigoo.com\u{a}")))))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt") (re.range "0" "9") (str.to_re "Subject:HANDY/rssScaner\u{a}"))))
(check-sat)
