(declare-const X String)
; /^\/[a-f0-9]{32}\.eot$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".eot/U\u{a}")))))
(check-sat)

(exit)
