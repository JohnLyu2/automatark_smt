(declare-const X String)
; Server.*Host\x3a.*SpyAgentRootHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "SpyAgentRootHost:\u{a}")))))
; ZC-BridgeHost\x3ASubject\x3aas\x2Estarware\x2Ecom
(assert (str.in_re X (str.to_re "ZC-BridgeHost:Subject:as.starware.com\u{a}")))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SbAts") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.com\u{a}"))))
; ^(0?[1-9]|[12][0-9]|3[01])[- /.](0?[1-9]|1[012])[- /.](19|20)?[0-9]{2}? ?((([0-1]?\d)|(2[0-3])):[0-5]\d)?(:[0-5]\d)? ?([a,p,A,P][m,M])?$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/") (str.to_re ".")) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.opt (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (re.++ (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (str.to_re " ")) (re.opt (re.++ (re.union (str.to_re "a") (str.to_re ",") (str.to_re "p") (str.to_re "A") (str.to_re "P")) (re.union (str.to_re "m") (str.to_re ",") (str.to_re "M")))) (str.to_re "\u{a}"))))
; ^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*\s+<(\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3})>$|^(\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3})$
(assert (str.in_re X (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to_re "'") (str.to_re ",") (str.to_re ".") (str.to_re "-") (str.to_re " ")) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "<>") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "@") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.++ (str.to_re "\u{a}") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "@") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
(check-sat)
