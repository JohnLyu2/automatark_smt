(declare-const X String)
; Host\x3a\dOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "OVNUsertooffers.bullseye-network.com\u{a}")))))
(check-sat)
