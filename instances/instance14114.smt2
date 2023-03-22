(declare-const X String)
; nethttp\x3A\x2F\x2FsupremetoolbarPORT\x3D
(assert (str.in_re X (str.to_re "nethttp://supremetoolbarPORT=\u{a}")))
; ^[^']*$
(assert (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "\u{a}"))))
(check-sat)
