(declare-const X String)
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (str.in_re X (str.to_re "HXLogOnlyanHost:spasHost:\u{a}")))
(check-sat)

(exit)
