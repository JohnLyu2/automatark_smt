(declare-const X String)
; ^(.|\n){0,16}$
(assert (str.in_re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "\u{a}"))))
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (str.in_re X (str.to_re "dialup_vpn@hermangroup.orgUser-Agent:\u{a}")))
; ^(([1-9]{1}[0-9]{0,5}([.]{1}[0-9]{0,2})?)|(([0]{1}))([.]{1}[0-9]{0,2})?)$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to_re "0")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}"))))
; frame_ver2\s+communityLibrarySoftwareWinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid
(assert (not (str.in_re X (re.++ (str.to_re "frame_ver2") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "communityLibrarySoftwareWinCrashcomHost:tid=%toolbar_id\u{a}")))))
(check-sat)
