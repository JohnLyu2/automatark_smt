(declare-const X String)
; DesktopHost\x3Aact=Microsoft
(assert (not (str.in_re X (str.to_re "DesktopHost:act=Microsoft\u{a}"))))
(check-sat)
