(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
; ^[A-Z]{1,3}\d{6}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; X-Mailer\x3a.*User-Agent\x3A[^\n\r]*ulmxct\x2fmqoyc
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc\u{a}"))))
(check-sat)
