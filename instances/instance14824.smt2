(declare-const X String)
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (not (str.in_re X (str.to_re "HXDownloadUser-Agent:answerDeletingCookieReferer:\u{a}"))))
; ^(.*)
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}")))))
; X-OSSproxy\x3a\w+\+Version\+\s+fast-look\x2Ecomwww\x2Emaxifiles\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "X-OSSproxy:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "+Version+") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fast-look.comwww.maxifiles.com\u{a}"))))
; ((^\d{5}$)|(^\d{8}$))|(^\d{5}-\d{3}$)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "\u{a}") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9"))))))
(check-sat)

(exit)
