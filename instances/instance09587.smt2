(declare-const X String)
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (str.in_re X (str.to_re "HXDownloadUser-Agent:answerDeletingCookieReferer:\u{a}")))
; [ ]*=[ ]*[\"]*cid[ ]*:[ ]*([^\"<> ]+)
(assert (str.in_re X (re.++ (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (re.* (str.to_re "\u{22}")) (str.to_re "cid") (re.* (str.to_re " ")) (str.to_re ":") (re.* (str.to_re " ")) (re.+ (re.union (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re " "))) (str.to_re "\u{a}"))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "cache.everer.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "from.myway.com\u{1b}Toolbar\u{a}"))))
(check-sat)
