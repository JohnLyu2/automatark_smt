(declare-const X String)
; /\x2Esum([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.sum") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in_re X (str.to_re "eveocczmthmmq/omzlHello./asp/offers.asp?\u{a}"))))
(check-sat)
