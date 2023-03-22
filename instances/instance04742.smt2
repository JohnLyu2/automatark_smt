(declare-const X String)
; Referer\x3Adialupvpn\x5fpwdwww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "Referer:dialupvpn_pwdwww.searchreslt.com\u{a}"))))
(check-sat)
