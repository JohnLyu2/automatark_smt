(declare-const X String)
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in_re X (str.to_re "ovplEchelonUser-Agent:User-Agent:Host:\u{a}")))
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to_re "/asp/offers.asp?\u{a}"))))
(check-sat)

(exit)
