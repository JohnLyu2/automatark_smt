(declare-const X String)
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}")))
; \x2Fcs\x2Fpop4\x2F\s+data\.warezclient\.com
(assert (str.in_re X (re.++ (str.to_re "/cs/pop4/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data.warezclient.com\u{a}"))))
; /filename=[^\n]*\x2equo/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".quo/i\u{a}"))))
(check-sat)

(exit)
