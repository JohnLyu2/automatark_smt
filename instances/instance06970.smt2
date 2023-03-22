(declare-const X String)
; /\x2egif([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.gif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; InformationAgentReferer\x3AClient
(assert (str.in_re X (str.to_re "InformationAgentReferer:Client\u{a}")))
(check-sat)
