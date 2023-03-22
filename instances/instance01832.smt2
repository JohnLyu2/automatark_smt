(declare-const X String)
; X-Mailer\x3a.*User-Agent\x3A[^\n\r]*ulmxct\x2fmqoyc
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc\u{a}")))))
(check-sat)
