(declare-const X String)
; /\x2eflv([\?\x5c\x2f]|$)/Umsi
(assert (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}"))))
(check-sat)

(exit)
