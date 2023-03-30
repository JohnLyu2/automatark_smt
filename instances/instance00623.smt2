(declare-const X String)
; Server\d+dcww\x2Edmcast\x2EcomdistID=Host\x3aSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=Host:Subject:\u{a}")))))
(check-sat)

(exit)
