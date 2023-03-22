(declare-const X String)
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (not (str.in_re X (re.++ (str.to_re "/.xfdl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}")))))
; User-Agent\x3A\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}"))))
(check-sat)
