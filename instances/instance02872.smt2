(declare-const X String)
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.* re.allchar) (str.to_re "www.makemesearch.com") (re.* re.allchar) (str.to_re "HBand,X-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)
