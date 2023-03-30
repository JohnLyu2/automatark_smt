(declare-const X String)
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (str.in_re X (str.to_re "Host:HANDYwww.purityscan.com\u{a}")))
(check-sat)

(exit)
