(declare-const X String)
; \swww\.fast-finder\.com[^\n\r]*\x2Fbar_pl\x2Fchk\.fcgi\d+Toolbar
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/chk.fcgi") (re.+ (re.range "0" "9")) (str.to_re "Toolbar\u{a}"))))
; from\x3AUser-Agent\x3AChildWebGuardian
(assert (not (str.in_re X (str.to_re "from:User-Agent:ChildWebGuardian\u{a}"))))
; http://[^/]*/
(assert (not (str.in_re X (re.++ (str.to_re "http://") (re.* (re.comp (str.to_re "/"))) (str.to_re "/\u{a}")))))
; DATencentTravelerWebConnLibHost\x3A
(assert (not (str.in_re X (str.to_re "DATencentTravelerWebConnLibHost:\u{a}"))))
(check-sat)

(exit)
