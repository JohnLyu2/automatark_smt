(declare-const X String)
; IPAnaloffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "IPAnaloffers.bullseye-network.com\u{a}"))))
(check-sat)

(exit)
