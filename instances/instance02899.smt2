(declare-const X String)
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (str.in_re X (str.to_re "Host:/ta/NEWS/yayad.com\u{13}\u{a}")))
(check-sat)

(exit)
