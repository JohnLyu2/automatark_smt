(declare-const X String)
; Send=\s+User-Agent\x3A\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2Fbacktrust\x2Ecomv\x2ELoginHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Host:/products/spyblocs/\u{13}backtrust.comv.LoginHost:\u{a}")))))
(check-sat)

(exit)
