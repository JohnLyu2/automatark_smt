(declare-const X String)
; ((\d|([a-f]|[A-F])){2}:){5}(\d|([a-f]|[A-F])){2}
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
