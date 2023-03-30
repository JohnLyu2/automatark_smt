(declare-const X String)
; /filename=[^\n]*\x2empg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpg/i\u{a}"))))
; gpstool\x2eglobaladserver\x2ecom\daction\x2E\w+data2\.activshopper\.com
(assert (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "data2.activshopper.com\u{a}"))))
(check-sat)

(exit)
