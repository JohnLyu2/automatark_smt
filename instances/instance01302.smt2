(declare-const X String)
; Host\x3A\d+ver\d+sportsUBAgent
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "ver") (re.+ (re.range "0" "9")) (str.to_re "sportsUBAgent\u{a}")))))
(check-sat)
