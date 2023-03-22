(declare-const X String)
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (not (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}")))))
(check-sat)
