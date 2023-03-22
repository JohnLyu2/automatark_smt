(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\u{a}"))))
; (^.+\|+[A-Za-z])
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ re.allchar) (re.+ (str.to_re "|")) (re.union (re.range "A" "Z") (re.range "a" "z")))))
; gpstool\x2eglobaladserver\x2ecom\daction\x2ESearchdata2\.activshopper\.com
(assert (not (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.Searchdata2.activshopper.com\u{a}")))))
(check-sat)
