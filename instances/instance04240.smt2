(declare-const X String)
; gpstool\x2eglobaladserver\x2ecom\daction\x2ESearchdata2\.activshopper\.com
(assert (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.Searchdata2.activshopper.com\u{a}"))))
(check-sat)
