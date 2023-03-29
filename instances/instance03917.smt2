(declare-const X String)
; Host\x3aSubject\x3AClientnamedFrom\x3A
(assert (str.in_re X (str.to_re "Host:Subject:ClientnamedFrom:\u{a}")))
(check-sat)

(exit)
