(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}"))))
(check-sat)
