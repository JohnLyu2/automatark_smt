(declare-const X String)
; /\x2ewmv([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wmv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}"))))
(check-sat)
