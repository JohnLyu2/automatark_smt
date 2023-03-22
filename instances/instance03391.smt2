(declare-const X String)
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (str.in_re X (re.++ (str.to_re "Authorization:") (re.+ (re.range "0" "9")) (str.to_re "lnzzlnbk/pkrm.fin\u{a}"))))
(check-sat)
