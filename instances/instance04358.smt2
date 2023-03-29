(declare-const X String)
; /\x2epcx([\x3f\x2f]|$)/Uim
(assert (str.in_re X (re.++ (str.to_re "/.pcx") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}"))))
(check-sat)

(exit)
