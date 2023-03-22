(declare-const X String)
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (str.in_re X (re.++ (str.to_re "User") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:riggiymd/wdhi.vhi\u{a}"))))
; ^([0-9]{0,5}|[0-9]{0,5}\.[0-9]{0,3})$
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 0 5) (re.range "0" "9")) (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; BysooTBUser-Agent\x3A
(assert (str.in_re X (str.to_re "BysooTBUser-Agent:\u{a}")))
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Server") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:Host:Bar/newsurfer4/\u{a}")))))
(check-sat)
