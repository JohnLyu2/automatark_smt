(declare-const X String)
; User-Agent\x3Agpstool\x2eglobaladserver\x2ecom
(assert (str.in_re X (str.to_re "User-Agent:gpstool.globaladserver.com\u{a}")))
(check-sat)
