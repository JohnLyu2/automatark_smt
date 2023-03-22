(declare-const X String)
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}"))))
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in_re X (str.to_re "ovplEchelonUser-Agent:User-Agent:Host:\u{a}")))
(check-sat)
