(declare-const X String)
; /filename=[^\n]*\x2ejpeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpeg/i\u{a}")))))
; Ts2\x2F\s+insert.*Host\x3aHELOHourssurvey\.asp\?nUserId=
(assert (not (str.in_re X (re.++ (str.to_re "Ts2/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.* re.allchar) (str.to_re "Host:HELOHourssurvey.asp?nUserId=\u{a}")))))
(check-sat)

(exit)
