(declare-const X String)
; Host\x3A.*Toolbar\s+Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}")))))
; ^-?\d+([^.,])?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re ","))) (str.to_re "\u{a}")))))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}"))))
(check-sat)
