(declare-const X String)
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}"))))
(check-sat)

(exit)
