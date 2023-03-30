(declare-const X String)
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to_re "/asp/offers.asp?\u{a}")))))
(check-sat)

(exit)
