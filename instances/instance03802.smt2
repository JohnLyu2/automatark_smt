(declare-const X String)
; \x5BStatic\w+www\.iggsey\.comUser-Agent\x3AX-Mailer\x3aComputer
(assert (not (str.in_re X (re.++ (str.to_re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.iggsey.comUser-Agent:X-Mailer:\u{13}Computer\u{a}")))))
(check-sat)

(exit)
