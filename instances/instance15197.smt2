(declare-const X String)
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}")))
; ^((\b[A-Z0-9](\w)*\b)|\s)*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (re.union (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
