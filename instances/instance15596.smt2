(declare-const X String)
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}")))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (not (str.in_re X (str.to_re "tv.180solutions.comGirlFriendHost:\u{a}"))))
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (str.in_re X (str.to_re "www.alfacleaner.comHost:Logs\u{a}")))
; /\x2epptx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pptx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\x3ASpyPORT-ischeck=Component
(assert (not (str.in_re X (str.to_re "User-Agent:SpyPORT-ischeck=Component\u{a}"))))
(check-sat)
