(declare-const X String)
; (1 )?\d{3} \d{3}-\d{4}
(assert (str.in_re X (re.++ (re.opt (str.to_re "1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "www.2-seek.com/search\u{a}")))))
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
(check-sat)
