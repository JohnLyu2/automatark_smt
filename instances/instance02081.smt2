(declare-const X String)
; about\d+yxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (not (str.in_re X (re.++ (str.to_re "about") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\u{a}")))))
(check-sat)
