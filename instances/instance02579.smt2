(declare-const X String)
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (str.in_re X (re.++ (str.to_re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb\u{a}"))))
(check-sat)
