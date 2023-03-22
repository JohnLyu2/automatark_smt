(declare-const X String)
; doarauzeraqf\x2fvvv\.ul
(assert (str.in_re X (str.to_re "doarauzeraqf/vvv.ul\u{a}")))
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (str.in_re X (str.to_re "Informationsearchnugget\u{13}spastb.freeprod.comOnlineWeb.fcgi\u{a}")))
; ^(\d{3}-\d{3}-\d{4})*$
(assert (not (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
