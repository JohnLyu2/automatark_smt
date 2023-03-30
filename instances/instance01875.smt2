(declare-const X String)
; Referer\x3ATencentTraveler
(assert (not (str.in_re X (str.to_re "Referer:TencentTraveler\u{a}"))))
(check-sat)

(exit)
