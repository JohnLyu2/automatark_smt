(declare-const X String)
; /filename=[^\n]*\x2esln/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sln/i\u{a}"))))
; nick_name=CIA-Testsearchnuggetprotocolframe_ver2MailerToolbarUser-Agent\x3afromEnTrY
(assert (str.in_re X (str.to_re "nick_name=CIA-Testsearchnugget\u{13}protocolframe_ver2MailerToolbarUser-Agent:fromEnTrY\u{a}")))
; /(bot|spider|crawler|google)/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "bot") (str.to_re "spider") (str.to_re "crawler") (str.to_re "google")) (str.to_re "/\u{a}")))))
; /filename=[^\n]*\x2ejpe/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpe/i\u{a}"))))
; configINTERNAL\.ini\s+User-Agent\x3A\s+Host\x3ASubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "configINTERNAL.ini") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:\u{a}")))))
(check-sat)
