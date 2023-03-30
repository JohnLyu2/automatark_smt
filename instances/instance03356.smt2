(declare-const X String)
; Root\s+insert\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrectClientsConnected-Host\x3A\x2APORT3\x2A
(assert (not (str.in_re X (re.++ (str.to_re "Root") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "haveFTUser-Agent:Dayspassword;0;IncorrectClientsConnected-Host:*PORT3*\u{a}")))))
(check-sat)

(exit)
