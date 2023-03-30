(declare-const X String)
; Host\x3A.*rt[^\n\r]*Host\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "rt") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:\u{a}"))))
; /nsrjb[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in_re X (re.++ (str.to_re "/nsrjb") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}")))))
; X-Mailer\x3a.*User-Agent\x3A[^\n\r]*ulmxct\x2fmqoyc
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc\u{a}"))))
(check-sat)

(exit)
