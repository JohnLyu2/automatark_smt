(declare-const X String)
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (not (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}"))))
(check-sat)

(exit)
