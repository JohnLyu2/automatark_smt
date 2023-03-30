(declare-const X String)
; MailerHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "MailerHost:User-Agent:\u{a}"))))
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "v;") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}Stealth") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\u{a}"))))
; ^\$?\d+(\.(\d{2}))?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
