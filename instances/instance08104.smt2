(declare-const X String)
; configINTERNAL\.ini.*SecureNet\s+User-Agent\x3Aregister\.asp
(assert (not (str.in_re X (re.++ (str.to_re "configINTERNAL.ini") (re.* re.allchar) (str.to_re "SecureNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:register.asp\u{a}")))))
; on\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "on") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.asx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; for mobile:^[0][1-9]{1}[0-9]{9}$
(assert (str.in_re X (re.++ (str.to_re "for mobile:0") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
