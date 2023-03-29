(declare-const X String)
; DmInf\x5E\s+offers\x2Ebullseye-network\x2Ecomlogfile
(assert (not (str.in_re X (re.++ (str.to_re "DmInf^") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "offers.bullseye-network.comlogfile\u{a}")))))
(check-sat)

(exit)
