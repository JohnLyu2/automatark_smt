(declare-const X String)
; Toolbar.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}")))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (not (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}"))))
; ad\x2Esearchsquire\x2Ecom\s+ocllceclbhs\x2fgth
(assert (not (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth\u{a}")))))
; ^[1-9]{1}[0-9]{3}\s{0,1}?[a-zA-Z]{2}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
