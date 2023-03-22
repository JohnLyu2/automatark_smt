(declare-const X String)
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Basic") (re.* re.allchar) (str.to_re "ProtoUser-Agent:\u{a}")))))
(check-sat)
