(declare-const X String)
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (not (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}"))))
(check-sat)
