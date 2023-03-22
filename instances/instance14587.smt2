(declare-const X String)
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}"))))
; <a[\s]+[^>]*?.*?>([^<]+|.*?)?<\/a>
(assert (str.in_re X (re.++ (str.to_re "<a") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (re.* re.allchar) (str.to_re ">") (re.opt (re.union (re.+ (re.comp (str.to_re "<"))) (re.* re.allchar))) (str.to_re "</a>\u{a}"))))
; Host\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in_re X (str.to_re "Host:as.starware.com/dp/search?x=\u{a}"))))
(check-sat)
