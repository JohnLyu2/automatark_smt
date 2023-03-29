(declare-const X String)
; X-Mailer\x3A.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}")))))
(check-sat)

(exit)
