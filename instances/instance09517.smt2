(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2ewpd[\x22\x27\s]/si
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wpd") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}"))))
; ^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) ((_ re.loop 3 3) (re.++ (str.to_re ".") (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))))) (str.to_re "\u{a}"))))
; DigExt.*\x23\x23\x23\x23
(assert (str.in_re X (re.++ (str.to_re "DigExt") (re.* re.allchar) (str.to_re "####\u{a}"))))
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
(check-sat)

(exit)
