(declare-const X String)
; SurveillanceacezHost\x3Acouponbar\.coupons\.comLOG
(assert (str.in_re X (str.to_re "Surveillance\u{13}acezHost:couponbar.coupons.comLOG\u{a}")))
(check-sat)

(exit)
