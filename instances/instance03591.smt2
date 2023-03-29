(declare-const X String)
; Referer\x3A.*notification.*qisezhin\x2fiqor\.ymspasServer\x3a
(assert (str.in_re X (re.++ (str.to_re "Referer:") (re.* re.allchar) (str.to_re "notification\u{13}") (re.* re.allchar) (str.to_re "qisezhin/iqor.ym\u{13}spasServer:\u{a}"))))
(check-sat)

(exit)
