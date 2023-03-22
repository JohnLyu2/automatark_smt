(declare-const X String)
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (str.in_re X (str.to_re "WinCrashcomHost:tid=%toolbar_id4.8.4\u{a}")))
; sports\s+ToolbarScanerX-Mailer\x3AInformation
(assert (str.in_re X (re.++ (str.to_re "sports") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolbarScanerX-Mailer:\u{13}Information\u{a}"))))
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}")))))
(check-sat)
