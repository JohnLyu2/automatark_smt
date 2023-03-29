(declare-const X String)
; 2\x2E41\d+www\x2Erichfind\x2EcomHost\x3ABeyond
(assert (str.in_re X (re.++ (str.to_re "2.41") (re.+ (re.range "0" "9")) (str.to_re "www.richfind.comHost:Beyond\u{a}"))))
(check-sat)

(exit)
