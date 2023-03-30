(declare-const X String)
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.exe") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^[a-zA-Z]$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}"))))
; ^[0-9]{8}$
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}")))
(check-sat)

(exit)
