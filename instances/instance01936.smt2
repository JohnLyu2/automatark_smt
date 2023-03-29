(declare-const X String)
; ppcdomain\x2Eco\x2Euk\d+Referer\x3A\w+PARSERHost\x3aA-311ServerUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.+ (re.range "0" "9")) (str.to_re "Referer:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSERHost:A-311ServerUser-Agent:\u{a}")))))
(check-sat)

(exit)
