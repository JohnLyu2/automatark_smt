(declare-const X String)
; Serverwjpropqmlpohj\x2floHost\x3AKEY=
(assert (not (str.in_re X (str.to_re "Serverwjpropqmlpohj/loHost:KEY=\u{a}"))))
(check-sat)

(exit)
