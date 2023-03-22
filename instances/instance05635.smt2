(declare-const X String)
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (str.in_re X (str.to_re "HXDownloadUser-Agent:answerDeletingCookieReferer:\u{a}")))
(check-sat)
