(declare-const X String)
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "pjpoptwql/rlnj") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SbAts") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.com\u{a}"))))
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.* re.allchar) (str.to_re "www.makemesearch.com") (re.* re.allchar) (str.to_re "HBand,X-Mailer:\u{13}\u{a}")))))
; (<input )(.*?)(>)
(assert (str.in_re X (re.++ (str.to_re "<input ") (re.* re.allchar) (str.to_re ">\u{a}"))))
(check-sat)

(exit)
