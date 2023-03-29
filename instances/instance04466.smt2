(declare-const X String)
; \x7D\x7BTrojan\x3ASubject\x3Aversion
(assert (str.in_re X (str.to_re "}{Trojan:Subject:version\u{a}")))
(check-sat)

(exit)
