(declare-const X String)
; Host\x3AFrom\x3aKeylogger
(assert (str.in_re X (str.to_re "Host:From:Keylogger\u{a}")))
(check-sat)

(exit)
