(declare-const X String)
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}")))
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (not (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}")))))
; TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2FX-Mailer\x3A
(assert (str.in_re X (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\u{13}\u{a}")))
(check-sat)

(exit)
