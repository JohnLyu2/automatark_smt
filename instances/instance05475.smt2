(declare-const X String)
; /hwinfo=\x7b[a-f0-9]{8}\x2d[a-f0-9]{4}\x2d[a-f0-9]{4}\x2d[a-f0-9]{4}\x2d[a-f0-9]{12}\x7d/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/hwinfo={") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "}/smiU\u{a}")))))
(check-sat)
