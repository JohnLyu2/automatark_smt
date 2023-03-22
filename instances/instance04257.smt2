(declare-const X String)
; Ready\sver\dcount\x2Eyok\x2Ecomweather
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "ver") (re.range "0" "9") (str.to_re "count.yok.comweather\u{a}"))))
(check-sat)
