(declare-const X String)
; is\w+gdvsotuqwsg\x2fdxt\.hd
(assert (str.in_re X (re.++ (str.to_re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd\u{a}"))))
(check-sat)
