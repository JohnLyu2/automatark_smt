(declare-const X String)
; jsp\d+Host\x3A\d+moreKontikiHost\x3aAcmeEvilFTP
(assert (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTP\u{a}"))))
; ^((([\+][\s]{0,1})|([0]{2}[\s-]{0,1}))([358]{3})([\s-]{0,1})|([0]{1}))(([1-9]{1}[0-9]{0,1})([\s-]{0,1})([0-9]{2,4})([\s-]{0,1})([0-9]{2,4})([\s-]{0,1}))([0-9]{0,3}){1}$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "+") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.++ ((_ re.loop 2 2) (str.to_re "0")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 3 3) (re.union (str.to_re "3") (str.to_re "5") (str.to_re "8"))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) ((_ re.loop 1 1) (str.to_re "0"))) ((_ re.loop 1 1) ((_ re.loop 0 3) (re.range "0" "9"))) (str.to_re "\u{a}") (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9")))))
; Windows\d+BlackFiltereddaosearch\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Windows") (re.+ (re.range "0" "9")) (str.to_re "BlackFiltereddaosearch.com\u{a}"))))
; ^\(?\+([9]{2}?[6])\)?[-. ]?([0-9]{3})[-. ]?([0-9]{3})[-. ]?([0-9]{3})$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "(")) (str.to_re "+") (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}") ((_ re.loop 2 2) (str.to_re "9")) (str.to_re "6")))))
(check-sat)

(exit)
