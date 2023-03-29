(declare-const X String)
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}")))
(check-sat)

(exit)
