(declare-const X String)
; /\x2Equo([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.quo") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}"))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (not (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}Computeron:com>2.41\u{a}")))))
; ^((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*);|(0|[1-9]+[0-9]*);)*?((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*)|(0|[1-9]+[0-9]*)){1}$
(assert (str.in_re X (re.++ (re.* (re.union (re.++ (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "-") (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re ";")) (re.++ (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re ";")))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "-") (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to_re "\u{a}"))))
(check-sat)
