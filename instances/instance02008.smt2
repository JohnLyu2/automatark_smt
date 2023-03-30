(declare-const X String)
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (str.in_re X (re.++ (str.to_re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY\u{a}"))))
(check-sat)

(exit)
