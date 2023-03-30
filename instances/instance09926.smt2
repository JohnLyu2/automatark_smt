(declare-const X String)
; /filename=[^\n]*\x2emov/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mov/i\u{a}")))))
; ^\d+\/?\d*$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
