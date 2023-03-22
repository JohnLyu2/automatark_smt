(declare-const X String)
; /filename=[^\n]*\x2eppt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ppt/i\u{a}"))))
; ^[+]?\d*$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "SbAts") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.com\u{a}")))))
; comUser-Agent\x3Asi=PORT\x3D\x2Fpagead\x2Fads\?Host\x3a\x2Fdesktop\x2F
(assert (str.in_re X (str.to_re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\u{a}")))
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/AGPi\u{a}"))))
(check-sat)
