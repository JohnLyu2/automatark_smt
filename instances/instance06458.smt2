(declare-const X String)
; <[^>]*\n?.*=("|')?(.*\.jpg)("|')?.*\n?[^<]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (re.opt (str.to_re "\u{a}")) (re.* re.allchar) (str.to_re "=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* re.allchar) (re.opt (str.to_re "\u{a}")) (re.* (re.comp (str.to_re "<"))) (str.to_re ">\u{a}") (re.* re.allchar) (str.to_re ".jpg")))))
; track\s+community\d+4\x2e8\x2e4www\x2Emaxifiles\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "track") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "4.8.4www.maxifiles.com\u{a}"))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (str.in_re X (re.++ (str.to_re "couponbar.coupons.com") (re.range "0" "9") (str.to_re "Owner:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
(check-sat)
