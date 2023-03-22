(declare-const X String)
; Host\x3A\s+ulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoycWinSession/client/*PORT1*\u{a}"))))
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}")))
; ^[a-z]
(assert (str.in_re X (re.++ (re.range "a" "z") (str.to_re "\u{a}"))))
; \.cfg\s+xbqyosoe\x2fcpvmAdToolsconnectedNodes\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "xbqyosoe/cpvmAdToolsconnectedNodes/cgi-bin/PopupV\u{a}"))))
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (not (str.in_re X (str.to_re "Host:.exePass-OnHost:.exe/toolbar/\u{a}"))))
(check-sat)
