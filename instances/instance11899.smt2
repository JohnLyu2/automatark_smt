(declare-const X String)
; /\x2epac([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pac") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Subject\x3a\s+OnlineServer\x3aYeah\!User-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OnlineServer:Yeah!User-Agent:\u{a}")))))
; Host\x3A.*Hello\x2E.*Referer\x3AToolbarCurrent\x3BCIA
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:ToolbarCurrent;CIA\u{a}")))))
(check-sat)

(exit)
