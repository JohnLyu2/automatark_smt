(declare-const X String)
; \x3BCIAKeylogger-ProHost\x3aproductscs\x2Eshopperreports\x2Ecom
(assert (str.in_re X (str.to_re ";CIAKeylogger-ProHost:productscs.shopperreports.com\u{a}")))
(check-sat)

(exit)
