(declare-const X String)
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (not (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}"))))
; \d{4}\s\d{4}\s\d{4}\s\d{4}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
