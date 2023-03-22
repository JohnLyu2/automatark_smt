(declare-const X String)
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (not (str.in_re X (str.to_re "Host:1-extreme.bizX-Mailer:\u{13}www.webcruiser.cc\u{a}"))))
(check-sat)
