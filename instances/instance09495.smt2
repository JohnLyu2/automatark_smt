(declare-const X String)
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dvr-ms/i\u{a}")))))
; SbAts\d+dcww\x2Edmcast\x2EcomdistID=
(assert (str.in_re X (re.++ (str.to_re "SbAts") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=\u{a}"))))
(check-sat)
