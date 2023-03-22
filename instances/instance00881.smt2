(declare-const X String)
; Download\d+ocllceclbhs\x2fgth
(assert (str.in_re X (re.++ (str.to_re "Download") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}"))))
(check-sat)
