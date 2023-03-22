(declare-const X String)
; linkautomatici\x2Ecom\dBasic\d+Host\x3AFloodedFictionalUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "linkautomatici.com") (re.range "0" "9") (str.to_re "Basic") (re.+ (re.range "0" "9")) (str.to_re "Host:FloodedFictionalUser-Agent:\u{a}")))))
(check-sat)
