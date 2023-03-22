(declare-const X String)
; ((^[0-9]*).?((BIS)|(TER)|(QUATER))?)?((\W+)|(^))(([a-z]+.)*)([0-9]{5})?.(([a-z\'']+.)*)$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.* (re.range "0" "9")) (re.opt re.allchar) (re.opt (re.union (str.to_re "BIS") (str.to_re "TER") (str.to_re "QUATER"))))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.opt ((_ re.loop 5 5) (re.range "0" "9"))) re.allchar (re.* (re.++ (re.+ (re.union (re.range "a" "z") (str.to_re "'"))) re.allchar)) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2exm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xm/i\u{a}"))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (str.in_re X (re.++ (str.to_re "couponbar.coupons.com") (re.range "0" "9") (str.to_re "Owner:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}")))
(check-sat)
