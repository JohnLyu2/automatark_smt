(declare-const X String)
; /\x2f(css|upload)\x2f[a-z]{2}[0-9]{3}\x2eccs/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.union (str.to_re "css") (str.to_re "upload")) (str.to_re "/") ((_ re.loop 2 2) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".ccs/U\u{a}")))))
(check-sat)
