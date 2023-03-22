(declare-const X String)
; User-Agent\x3A\dBarwww\x2Eaccoona\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Barwww.accoona.com\u{a}"))))
(check-sat)
