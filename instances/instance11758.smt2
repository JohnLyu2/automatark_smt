(declare-const X String)
; /filename=[^\n]*\x2epict/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pict/i\u{a}"))))
; encoder\s%3fsearchresltX-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "encoder") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "%3fsearchresltX-Mailer:\u{13}\u{a}")))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}")))
(check-sat)
