(declare-const X String)
; /\x2emsi([\?\x5c\x2f]|$)/miU
(assert (str.in_re X (re.++ (str.to_re "/.msi") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}"))))
(check-sat)

(exit)
