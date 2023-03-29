(declare-const X String)
; /DEXT87(no|up|\d+\x2e\d+\x2e\d+\x2e\d+)/i
(assert (str.in_re X (re.++ (str.to_re "/DEXT87") (re.union (str.to_re "no") (str.to_re "up") (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "/i\u{a}"))))
(check-sat)

(exit)
