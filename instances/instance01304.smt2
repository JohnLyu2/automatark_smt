(declare-const X String)
; /\x2eswf([\x3f\x2f]|$)/Uim
(assert (not (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}")))))
(check-sat)
