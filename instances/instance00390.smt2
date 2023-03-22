(declare-const X String)
; searches\x2Eworldtostart\x2Ecom\w+searchreslt\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (re.++ (str.to_re "searches.worldtostart.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:\u{a}")))))
(check-sat)
