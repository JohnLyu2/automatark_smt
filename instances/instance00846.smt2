(declare-const X String)
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SbAts") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.com\u{a}"))))
(check-sat)

(exit)
