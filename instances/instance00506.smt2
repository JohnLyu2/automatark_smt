(declare-const X String)
; www\x2Efreescratchandwin\x2Ecom\w+Port.*User-Agent\x3AToolbarkit
(assert (not (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Port") (re.* re.allchar) (str.to_re "User-Agent:Toolbarkit\u{a}")))))
(check-sat)

(exit)
