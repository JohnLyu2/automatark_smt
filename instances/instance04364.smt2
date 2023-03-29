(declare-const X String)
; iz=Referer\x3Aoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "iz=Referer:offers.bullseye-network.com\u{a}"))))
(check-sat)

(exit)
