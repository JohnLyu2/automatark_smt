(declare-const X String)
; Host\x3A\d+ver\d+sportsUBAgent
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "ver") (re.+ (re.range "0" "9")) (str.to_re "sportsUBAgent\u{a}")))))
; /filename=[^\n]*\x2emaplet/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}")))))
(check-sat)

(exit)
