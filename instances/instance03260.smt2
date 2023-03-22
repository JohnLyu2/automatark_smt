(declare-const X String)
; /PRIVMSG #new :\x02\x5b(GOOGLE|SCAN)\x5d\x02\x20Scanning/
(assert (not (str.in_re X (re.++ (str.to_re "/PRIVMSG #new :\u{2}[") (re.union (str.to_re "GOOGLE") (str.to_re "SCAN")) (str.to_re "]\u{2} Scanning/\u{a}")))))
(check-sat)
