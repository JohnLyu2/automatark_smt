(declare-const X String)
; User-Agent\x3A\s+ocllceclbhs\x2fgth.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (not (str.in_re X (re.++ (str.to_re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.range "0" "9") (str.to_re "BetaWordixqshv/qzccs\u{a}")))))
(check-sat)

(exit)
