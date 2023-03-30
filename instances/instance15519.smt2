(declare-const X String)
; 3A\s+URLBlazeHost\x3Atrackhjhgquqssq\x2fpjm
(assert (str.in_re X (re.++ (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlazeHost:trackhjhgquqssq/pjm\u{a}"))))
; Points\d+Host\x3a\dBasicwww\x2Ewebcruiser\x2Ecc
(assert (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Basicwww.webcruiser.cc\u{a}"))))
(check-sat)

(exit)
