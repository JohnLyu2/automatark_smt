(declare-const X String)
; /\/jorg\.html$/U
(assert (str.in_re X (str.to_re "//jorg.html/U\u{a}")))
(check-sat)
