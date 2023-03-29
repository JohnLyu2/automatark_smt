(declare-const X String)
; Host\x3A\s+Host\x3A\x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lio
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:|roogoo|Testiufilfwulmfi/riuf.lio\u{a}"))))
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.* re.allchar) (str.to_re "www.makemesearch.com") (re.* re.allchar) (str.to_re "HBand,X-Mailer:\u{13}\u{a}")))))
(check-sat)

(exit)
