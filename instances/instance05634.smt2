(declare-const X String)
; on\dstepwww\x2Ekornputers\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "on") (re.range "0" "9") (str.to_re "stepwww.kornputers.com\u{a}"))))
(check-sat)

(exit)
