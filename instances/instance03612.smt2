(declare-const X String)
; /\/\d+\/\d\.zip\x27\x3b/
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re "/") (re.range "0" "9") (str.to_re ".zip';/\u{a}"))))
(check-sat)
