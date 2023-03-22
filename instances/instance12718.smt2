(declare-const X String)
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}")))))
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "v;") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}Stealth") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\u{a}"))))
; ^[a-zA-Z0-9]+(([_][a-zA-Z0-9])?[a-zA-Z0-9]*)*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.++ (str.to_re "_") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; SAcc\d+Seconds\-\x2Fcommunicatortb
(assert (str.in_re X (re.++ (str.to_re "SAcc") (re.+ (re.range "0" "9")) (str.to_re "Seconds-/communicatortb\u{a}"))))
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (not (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}"))))
(check-sat)
