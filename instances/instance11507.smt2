(declare-const X String)
; (\{\\f\d*)\\([^;]+;)
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}\u{a}{\u{5c}f") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to_re ";"))) (str.to_re ";")))))
; Host\x3A\w+installs\x2Eseekmo\x2Ecom\swww\.fast-finder\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "installs.seekmo.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}"))))
(check-sat)

(exit)
