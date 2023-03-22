(declare-const X String)
; MyBrowserSbAtsHost\x3A
(assert (not (str.in_re X (str.to_re "MyBrowserSbAtsHost:\u{a}"))))
(check-sat)
