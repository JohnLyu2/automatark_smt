(declare-const X String)
; Server\s+www\x2Epeer2mail\x2Ecom.*Subject\x3AReferer\x3A
(assert (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com") (re.* re.allchar) (str.to_re "Subject:Referer:\u{a}"))))
; act=\s+smrtshpr-cs-verDANavExcel
(assert (not (str.in_re X (re.++ (str.to_re "act=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "smrtshpr-cs-\u{13}verDANavExcel\u{a}")))))
(check-sat)
