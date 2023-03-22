(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgi\s+adblock\x2Elinkz\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "/bar_pl/chk_bar.fcgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}")))))
; User-Agent\x3A\d+wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}")))))
; /\x2fsoft(64|32)\x2edll$/U
(assert (str.in_re X (re.++ (str.to_re "//soft") (re.union (str.to_re "64") (str.to_re "32")) (str.to_re ".dll/U\u{a}"))))
(check-sat)
