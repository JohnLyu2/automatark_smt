(declare-const X String)
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\w+searchreslt\x7D\x7BSysuptime\x3ASubject\x3AHANDY
(assert (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:Subject:HANDY\u{a}"))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}"))))
; http\s+Host\x3A[^\n\r]*WinInet3Azopabora\x2Einfo\x2Fnotifier\x2FUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "http") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "WinInet3Azopabora.info/notifier/User-Agent:\u{a}")))))
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in_re X (re.++ (str.to_re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to_re "/")) (str.to_re "-->\u{a}")))))
(check-sat)

(exit)
