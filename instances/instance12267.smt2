(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Everyware") (re.* re.allchar) (str.to_re "Email") (re.* re.allchar) (str.to_re "Host:stepwww.kornputers.com\u{a}")))))
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to_re "Referer:datcouponbar.coupons.com\u{a}")))))
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (not (str.in_re X (re.++ (str.to_re "c.goclick.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlaze\u{a}")))))
(check-sat)

(exit)
