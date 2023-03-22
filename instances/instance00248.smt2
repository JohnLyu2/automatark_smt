(declare-const X String)
; JMailReportgpstool\x2eglobaladserver\x2ecom
(assert (str.in_re X (str.to_re "JMailReportgpstool.globaladserver.com\u{a}")))
(check-sat)
