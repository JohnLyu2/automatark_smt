(declare-const X String)
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}"))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (str.in_re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
