(declare-const X String)
; /\x2exul([\?\x5c\x2f]|$)/Umsi
(assert (not (str.in_re X (re.++ (str.to_re "/.xul") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}")))))
(check-sat)
