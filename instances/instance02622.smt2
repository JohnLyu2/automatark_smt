(declare-const X String)
; couponbar\.coupons\.comKeystrokesSubject\x3A
(assert (not (str.in_re X (str.to_re "couponbar.coupons.comKeystrokesSubject:\u{a}"))))
(check-sat)

(exit)
