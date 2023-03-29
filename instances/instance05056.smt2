(declare-const X String)
; /\x2emcl([\x3f\x2f]|$)/Uim
(assert (str.in_re X (re.++ (str.to_re "/.mcl") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}"))))
(check-sat)

(exit)
