(declare-const X String)
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (str.in_re X (re.++ (str.to_re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to_re "Referer:datcouponbar.coupons.com\u{a}"))))
(check-sat)
