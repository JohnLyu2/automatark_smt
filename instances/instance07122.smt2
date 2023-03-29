(declare-const X String)
; gpstool\x2eglobaladserver\x2ecom\daction\x2ESearchdata2\.activshopper\.com
(assert (not (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.Searchdata2.activshopper.com\u{a}")))))
; ^\d{5}[- .]?\d{7}[- .]?\d{1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
