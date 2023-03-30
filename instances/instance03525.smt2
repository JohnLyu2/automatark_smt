(declare-const X String)
; Ready\s+Client\s+MyBrowserHost\x3asecurityon\x3AHost\x3ARedirector\x22ServerHost\x3AX-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MyBrowserHost:securityon:Host:Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}")))))
(check-sat)

(exit)
