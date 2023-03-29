(declare-const X String)
; Flooded\s+Host\x3A\s+AppName\x2FGRSI\|Server\|Host\x3Aorigin\x3DsidefindHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Flooded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AppName/GRSI|Server|\u{13}Host:origin=sidefindHost:User-Agent:\u{a}")))))
(check-sat)

(exit)
