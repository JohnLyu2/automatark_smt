(declare-const X String)
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "scribd") re.allchar (str.to_re "com/doc/2569355/Geo-Distance-Search-with-MySQL\u{a}"))))
; /User-Agent\x3a\x20Agent\d{5,9}/Hi
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: Agent") ((_ re.loop 5 9) (re.range "0" "9")) (str.to_re "/Hi\u{a}"))))
; ^(19|20)\d\d[-/.]([1-9]|0[1-9]|1[012])[- /.]([1-9]|0[1-9]|[12][0-9]|3[01])$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "-") (str.to_re "/") (str.to_re ".")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/") (str.to_re ".")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{a}")))))
; \x5BStatic\w+www\.iggsey\.comUser-Agent\x3AX-Mailer\x3aComputer
(assert (str.in_re X (re.++ (str.to_re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.iggsey.comUser-Agent:X-Mailer:\u{13}Computer\u{a}"))))
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (not (str.in_re X (str.to_re "Fen\u{ea}treEye/dss/cc.2_0_0.TROJAN-\u{a}"))))
(check-sat)
