(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (str.in_re X (str.to_re "Subject:SpywareSpyBuddy\u{a}")))
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in_re X (re.++ (str.to_re "Authorization:") (re.+ (re.range "0" "9")) (str.to_re "lnzzlnbk/pkrm.fin\u{a}")))))
(check-sat)
