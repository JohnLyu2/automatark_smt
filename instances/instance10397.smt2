(declare-const X String)
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (not (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}"))))
; \.myway\.comToolbarUI2Host\x3ASubject\x3Atoxbqyosoe\x2fcpvm
(assert (not (str.in_re X (str.to_re ".myway.com\u{1b}ToolbarUI2Host:Subject:toxbqyosoe/cpvm\u{a}"))))
(check-sat)

(exit)
