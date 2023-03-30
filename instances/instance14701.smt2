(declare-const X String)
; Black\s+Warezxmlns\x3A%3flinkautomatici\x2EcomSubject\x3aHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.comSubject:Host:\u{a}"))))
; /\x2evisprj([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.visprj") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^[a-zA-z0-9]+[@]{1}[a-zA-Z]+[.]{1}[a-zA-Z]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to_re "@")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
