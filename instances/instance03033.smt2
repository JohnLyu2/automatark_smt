(declare-const X String)
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "DISK") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgiSubject:insertX-Mailer:\u{13}\u{a}"))))
(check-sat)
