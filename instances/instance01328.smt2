(declare-const X String)
; User-Agent\x3A\d+moreKontikiHost\x3a
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:\u{a}"))))
(check-sat)

(exit)
