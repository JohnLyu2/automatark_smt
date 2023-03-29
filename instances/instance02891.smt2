(declare-const X String)
; EItrustyfiles\x2Ecomnick_name=CIA-Test
(assert (not (str.in_re X (str.to_re "EItrustyfiles.comnick_name=CIA-Test\u{a}"))))
(check-sat)

(exit)
