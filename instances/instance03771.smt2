(declare-const X String)
; 3A\s+URLBlazeHost\x3Atrackhjhgquqssq\x2fpjm
(assert (str.in_re X (re.++ (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlazeHost:trackhjhgquqssq/pjm\u{a}"))))
(check-sat)
