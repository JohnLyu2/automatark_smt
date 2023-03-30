(declare-const X String)
; ^[2-9][0-8]\d[2-9]\d{6}$
(assert (str.in_re X (re.++ (re.range "2" "9") (re.range "0" "8") (re.range "0" "9") (re.range "2" "9") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
; cojud\x2Edmcast\x2Ecom\sApofis\w+Referer\x3Awww\x2Emirarsearch\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "cojud.dmcast.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Apofis") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Referer:www.mirarsearch.com\u{a}"))))
; ^((\d{1,2})?([.][\d]{1,2})?){1}[%]{1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))))) ((_ re.loop 1 1) (str.to_re "%")) (str.to_re "\u{a}")))))
; /\x2ewmf([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wmf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^(\d{5}-\d{4}|\d{5})$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
