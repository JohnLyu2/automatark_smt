(declare-const X String)
; \x2Ehtml\s+IDENTIFYwww\x2Eccnnlc\x2Ecomfilename=\x22Referer\x3A
(assert (str.in_re X (re.++ (str.to_re ".html") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFYwww.ccnnlc.com\u{13}filename=\u{22}Referer:\u{a}"))))
; NETObserveSupervisorHost\x3Awebsearch\x2Edrsnsrch\x2Ecom
(assert (str.in_re X (str.to_re "NETObserveSupervisorHost:websearch.drsnsrch.com\u{13}\u{a}")))
; ^\s*
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
