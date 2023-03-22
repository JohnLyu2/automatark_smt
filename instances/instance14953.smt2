(declare-const X String)
; /filename=[^\n]*\x2ecue/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cue/i\u{a}")))))
; /^Host\x3A\s+.*jaiku\x2Ecom/smiH
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "jaiku.com/smiH\u{a}"))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "couponbar.coupons.com") (re.range "0" "9") (str.to_re "Owner:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
(check-sat)
