(declare-const X String)
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Email") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:wowokayHost:\u{a}"))))
; /filename=[^\n]*\x2emid/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mid/i\u{a}")))))
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/") (re.range "0" "9") (str.to_re "encoderserverreport</title>\u{a}")))))
; ^([0]?[1-9]|[1][0-2]|[2][0-3]):([0-5][0-9]|[1-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.union (re.++ (re.range "0" "5") (re.range "0" "9")) (re.range "1" "9")) (str.to_re "\u{a}")))))
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (str.in_re X (str.to_re "mPOPUser-Agent:gotS:Users\u{5c}PORT=HXLogOnlyMGS-Internal-Web-Manager\u{a}")))
(check-sat)
