(declare-const X String)
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "SecureNet") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}")))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (not (str.in_re X (re.++ (str.to_re "//Type/XRef/W[") (re.* (re.comp (str.to_re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to_re "/smi\u{a}")))))
; wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (not (str.in_re X (str.to_re "wwwHost:RobertVersionspyblini.ini\u{a}"))))
(check-sat)

(exit)
