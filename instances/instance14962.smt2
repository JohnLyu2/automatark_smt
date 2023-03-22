(declare-const X String)
; (\d+)([,|.\d])*\d
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re ",") (str.to_re "|") (str.to_re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to_re "\u{a}"))))
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}")))))
; Host\x3A\w+User-Agent\x3A\sTeomaBarHost\x3AHoursHost\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TeomaBarHost:HoursHost:Host:\u{a}")))))
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\x3A195\.225\.Subject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "FreeAccessBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostie") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowser") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:195.225.Subject:\u{a}")))))
(check-sat)
