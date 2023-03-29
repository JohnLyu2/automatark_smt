(declare-const X String)
; \/cgi-bin\/PopupVHost\x3Apiolet\x0D\x0A\x0D\x0AAttached
(assert (not (str.in_re X (str.to_re "/cgi-bin/PopupVHost:piolet\u{d}\u{a}\u{d}\u{a}Attached\u{a}"))))
(check-sat)

(exit)
