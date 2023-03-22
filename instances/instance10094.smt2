(declare-const X String)
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (str.in_re X (re.++ (str.to_re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to_re "Referer:datcouponbar.coupons.com\u{a}"))))
; search\x2econduit\x2ecom\sPARSER.*
(assert (not (str.in_re X (re.++ (str.to_re "search.conduit.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PARSER") (re.* re.allchar) (str.to_re "\u{a}")))))
(check-sat)
