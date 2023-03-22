(declare-const X String)
; Host\x3a===========\x3Ewww\x2Eonetoolbar\x2Ecom
(assert (str.in_re X (str.to_re "Host:===========>www.onetoolbar.com\u{a}")))
(check-sat)
