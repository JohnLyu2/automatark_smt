(declare-const X String)
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (str.in_re X (re.++ (str.to_re "tv.180solutions.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "have") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Dayspassword;0;Incorrect\u{a}"))))
; /\x2f\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (str.in_re X (re.++ (str.to_re "//{#") (re.+ (re.union (str.to_re "/") (str.to_re "{") (str.to_re "}"))) (str.to_re "}") (re.opt (str.to_re ".action")) (re.opt (str.to_re "/")) (str.to_re "/miU\u{a}"))))
; ^(([a-zA-Z]+\d+)|(\d+[a-zA-Z]+))[a-zA-Z0-9]*$
(assert (str.in_re X (re.++ (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
