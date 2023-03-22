(declare-const X String)
; ^([0-9a-fA-F])*$
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
; aohobygi\x2fzwiwHost\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in_re X (str.to_re "aohobygi/zwiwHost:}|richfind.com\u{a}")))
(check-sat)
