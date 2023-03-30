(declare-const X String)
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in_re X (re.++ (str.to_re "Authorization:") (re.+ (re.range "0" "9")) (str.to_re "lnzzlnbk/pkrm.fin\u{a}")))))
; cdpnode=\w+Authorization\x3aname\x2ecnnic\x2ecn
(assert (str.in_re X (re.++ (str.to_re "cdpnode=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Authorization:name.cnnic.cn\u{a}"))))
(check-sat)

(exit)
