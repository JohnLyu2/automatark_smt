(declare-const X String)
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (str.in_re X (re.++ (str.to_re "User") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:riggiymd/wdhi.vhi\u{a}"))))
; ^(02\d\s?\d{4}\s?\d{4})|((01|05)\d{2}\s?\d{3}\s?\d{4})|((01|05)\d{3}\s?\d{5,6})|((01|05)\d{4}\s?\d{4,5})$
(assert (str.in_re X (re.union (re.++ (str.to_re "02") (re.range "0" "9") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 5 6) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 5) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))))))
(check-sat)
