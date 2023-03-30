(declare-const X String)
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.asx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\x3a\x2Fnewsurfer4\x2F
(assert (not (str.in_re X (str.to_re "User-Agent:/newsurfer4/\u{a}"))))
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}")))))
; User-Agent\x3AChildWebGuardianHXDownloadX-Mailer\x3a
(assert (not (str.in_re X (str.to_re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)
