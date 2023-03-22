(declare-const X String)
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (not (str.in_re X (re.++ (str.to_re "X-OSSproxy:") (re.range "0" "9") (str.to_re "Microsoft*PORT3*ProLive+Version+3A\u{a}")))))
(check-sat)
