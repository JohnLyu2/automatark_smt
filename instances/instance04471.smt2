(declare-const X String)
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (not (str.in_re X (re.++ (str.to_re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}")))))
(check-sat)
