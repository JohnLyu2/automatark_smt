(declare-const X String)
; vbwwwc\.goclick\.compassword\x3B0\x3BIncorrect
(assert (not (str.in_re X (str.to_re "vbwwwc.goclick.compassword;0;Incorrect\u{a}"))))
(check-sat)
