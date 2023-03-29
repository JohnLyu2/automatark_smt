(declare-const X String)
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (not (str.in_re X (str.to_re "wlpgskmv/lwzo.qv#www.kliksearch.com\u{a}"))))
(check-sat)

(exit)
