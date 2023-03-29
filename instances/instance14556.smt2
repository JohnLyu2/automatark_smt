(declare-const X String)
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}")))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (str.in_re X (re.++ (str.to_re "Google") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:FILESIZE>\u{13}\u{a}"))))
(check-sat)

(exit)
