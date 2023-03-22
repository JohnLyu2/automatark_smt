(declare-const X String)
; this\s+MyBrowser\d+Redirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MyBrowser") (re.+ (re.range "0" "9")) (str.to_re "Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}"))))
; Supervisor\s+User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Supervisor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; <\*?font              # Match start of Font Tag
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "*")) (str.to_re "font              # Match start of Font Tag\u{a}")))))
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (str.in_re X (re.++ (str.to_re "Address:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAtsHTTP_RAT_Subject:\u{a}"))))
(check-sat)
