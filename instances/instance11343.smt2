(declare-const X String)
; Black\s+Warezxmlns\x3A%3flinkautomatici\x2EcomSubject\x3aHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.comSubject:Host:\u{a}"))))
; /filename=[^\n]*\x2emp3/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp3/i\u{a}"))))
(check-sat)
