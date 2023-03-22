(declare-const X String)
; ^(\d{5}-\d{4}|\d{5})$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /\/modules\/\d\.jar$/U
(assert (not (str.in_re X (re.++ (str.to_re "//modules/") (re.range "0" "9") (str.to_re ".jar/U\u{a}")))))
; /\/stat_n\/$/U
(assert (str.in_re X (str.to_re "//stat_n//U\u{a}")))
(check-sat)
