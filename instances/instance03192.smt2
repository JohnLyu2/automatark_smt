(declare-const X String)
; downloadfile\x2eorg\w+com\x3EHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "com>Host:\u{a}")))))
(check-sat)

(exit)
