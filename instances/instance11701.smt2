(declare-const X String)
; SE\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}|SE\d{22}
(assert (str.in_re X (re.++ (str.to_re "SE") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 22 22) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; /\x2ewmv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Id\x3d\x5b\s+Host\x3A\s+www\x2Eyoogee\x2EcomHost\x3A\<title\>Actual
(assert (not (str.in_re X (re.++ (str.to_re "Id=[") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yoogee.com\u{13}Host:<title>Actual\u{a}")))))
; ((PL|SK)-?)?[0-9]{10}
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "PL") (str.to_re "SK")) (re.opt (str.to_re "-")))) ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
