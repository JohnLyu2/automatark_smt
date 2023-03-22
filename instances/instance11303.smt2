(declare-const X String)
; ^\d+\x20*([pP][xXtT])?$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (str.to_re " ")) (re.opt (re.++ (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "x") (str.to_re "X") (str.to_re "t") (str.to_re "T")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ewax/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wax/i\u{a}")))))
; /filename=[^\n]*\x2ejpx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpx/i\u{a}")))))
(check-sat)
