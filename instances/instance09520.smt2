(declare-const X String)
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
; ^\d+\x20*([pP][xXtT])?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (str.to_re " ")) (re.opt (re.++ (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "x") (str.to_re "X") (str.to_re "t") (str.to_re "T")))) (str.to_re "\u{a}")))))
; \x7D\x7BTrojan\x3A\w+by\d+to\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivion
(assert (not (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.range "0" "9")) (str.to_re "to") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "dddlogin.dudu.comSurveillance\u{13}IPOblivion\u{a}")))))
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "v;") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}Stealth") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\u{a}"))))
(check-sat)

(exit)
