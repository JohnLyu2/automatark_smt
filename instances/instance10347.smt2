(declare-const X String)
; www\.thecommunicator\.net\d+http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}"))))
; A + B
(assert (not (str.in_re X (re.++ (str.to_re "A") (re.+ (str.to_re " ")) (str.to_re " B\u{a}")))))
; /\x2ewps([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wps") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Host:\u{a}")))
; UI2Host\x3ADesktopUser-Agent\x3a\x2Fnotifier\x2F
(assert (not (str.in_re X (str.to_re "UI2Host:DesktopUser-Agent:/notifier/\u{a}"))))
(check-sat)
