(declare-const X String)
; Theef2offers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (str.to_re "Theef2offers.bullseye-network.com\u{a}"))))
(check-sat)
