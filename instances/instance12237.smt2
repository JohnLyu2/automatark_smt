(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-z]{1,15}-[a-z]{1,15}\.php/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 1 15) (re.range "a" "z")) (str.to_re "-") ((_ re.loop 1 15) (re.range "a" "z")) (str.to_re ".php/U\u{a}")))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (str.in_re X (str.to_re "User-Agent:Host:Host:SpyBuddy\u{a}")))
(check-sat)

(exit)
