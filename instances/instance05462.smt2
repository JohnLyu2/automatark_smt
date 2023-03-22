(declare-const X String)
; Host\x3AYOURcache\x2Eeverer\x2Ecomwww\x2Epurityscan\x2Ecom
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
(check-sat)
