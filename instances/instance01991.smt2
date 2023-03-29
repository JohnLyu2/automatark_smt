(declare-const X String)
; Softwarerequestedoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "Softwarerequestedoffers.bullseye-network.com\u{a}"))))
(check-sat)

(exit)
