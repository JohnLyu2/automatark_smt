(declare-const X String)
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (not (str.in_re X (re.++ (str.to_re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.range "0" "9") (str.to_re "BetaWordixqshv/qzccs\u{a}")))))
(check-sat)
