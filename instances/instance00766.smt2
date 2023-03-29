(declare-const X String)
; SbAts\d+dcww\x2Edmcast\x2EcomdistID=
(assert (not (str.in_re X (re.++ (str.to_re "SbAts") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=\u{a}")))))
(check-sat)

(exit)
