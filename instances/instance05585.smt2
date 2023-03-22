(declare-const X String)
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (str.in_re X (re.++ (str.to_re ".bmp") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "couponbar.coupons.com") (re.* re.allchar) (str.to_re "Host:Host:HTTPwww\u{a}"))))
(check-sat)
