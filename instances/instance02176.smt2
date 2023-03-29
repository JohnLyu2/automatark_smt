(declare-const X String)
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in_re X (str.to_re "eveocczmthmmq/omzlHello./asp/offers.asp?\u{a}"))))
(check-sat)

(exit)
