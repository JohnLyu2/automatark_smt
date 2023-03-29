(declare-const X String)
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (not (str.in_re X (str.to_re "/cs/pop4/A-Spywww.yoogee.com\u{13}\u{a}"))))
; /filename=[^\n]*\x2epng/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".png/i\u{a}")))))
; X-Mailer\x3aUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}User-Agent:\u{a}"))))
(check-sat)

(exit)
