(declare-const X String)
; ^[1-9][0-9]{3}$
(assert (str.in_re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre") (re.* re.allchar) (str.to_re "Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (str.in_re X (re.++ (str.to_re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to_re "UI2\u{a}"))))
(check-sat)

(exit)
