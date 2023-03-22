(declare-const X String)
; Minutes\s+\x2Fcgi\x2Flogurl\.cgi\s+e2give\.com
(assert (str.in_re X (re.++ (str.to_re "Minutes") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com\u{a}"))))
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/ezsb") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}\u{a}"))))
; toolbar_domain_redirectlibManager\x2Edll\x5Eget
(assert (not (str.in_re X (str.to_re "toolbar_domain_redirectlibManager.dll^get\u{a}"))))
(check-sat)
