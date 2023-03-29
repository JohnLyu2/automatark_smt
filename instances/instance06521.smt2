(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Everyware") (re.* re.allchar) (str.to_re "Email") (re.* re.allchar) (str.to_re "Host:stepwww.kornputers.com\u{a}")))))
; TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (not (str.in_re X (str.to_re "TPSystemHost:Host:show.roogoo.comX-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)
