(declare-const X String)
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (not (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}")))))
(check-sat)

(exit)
