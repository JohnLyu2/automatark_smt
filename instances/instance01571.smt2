(declare-const X String)
; ATL\w+SoftActivitypassword\x3B0\x3BIncorrect
(assert (not (str.in_re X (re.++ (str.to_re "ATL") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "SoftActivity\u{13}password;0;Incorrect\u{a}")))))
(check-sat)

(exit)
