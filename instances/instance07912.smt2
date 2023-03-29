(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\x2Ecameup\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "ServerLiteToolbardailywww.cameup.com\u{13}\u{a}"))))
; config\x2E180solutions\x2Ecom\dStableWeb-MailUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "config.180solutions.com") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:\u{a}"))))
; /filename=[^\n]*\x2ette/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tte/i\u{a}"))))
; Keylogger-Pro\s+isUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Keylogger-Pro") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "isUser-Agent:\u{a}")))))
(check-sat)

(exit)
