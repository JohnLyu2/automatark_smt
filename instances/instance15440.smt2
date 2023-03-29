(declare-const X String)
; From\x3A.*Host\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in_re X (re.++ (str.to_re "From:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}")))))
; fromMinixmlldap\x3A\x2F\x2F\x2Fbonzibuddy\x2Ftoolbar_domain_redirectUser-Agent\x3A
(assert (str.in_re X (str.to_re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\u{a}")))
(check-sat)

(exit)
