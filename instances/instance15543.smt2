(declare-const X String)
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.exe") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; t=ProtoUser-Agent\x3Aquick\x2Eqsrch\x2Ecom
(assert (not (str.in_re X (str.to_re "t=ProtoUser-Agent:quick.qsrch.com\u{a}"))))
(check-sat)
