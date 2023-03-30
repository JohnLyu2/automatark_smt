(declare-const X String)
; ^\s+|\s+$
(assert (not (str.in_re X (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))))
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to_re "\u{d}\u{a}/Hm\u{a}")))))
; Root\s+insert\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrectClientsConnected-Host\x3A\x2APORT3\x2A
(assert (str.in_re X (re.++ (str.to_re "Root") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "haveFTUser-Agent:Dayspassword;0;IncorrectClientsConnected-Host:*PORT3*\u{a}"))))
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (str.in_re X (re.++ (str.to_re "Port.") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "007") (re.+ (re.range "0" "9")) (str.to_re "Logsdl.web-nexus.net\u{a}"))))
; ^(1?(-?\d{3})-?)?(\d{3})(-?\d{4})$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "1")) (re.opt (str.to_re "-")) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}") (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)

(exit)
