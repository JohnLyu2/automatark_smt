(declare-const X String)
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "&") (str.to_re "-") (str.to_re ".") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
; /filename=[^\n]*\x2emka/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mka/i\u{a}")))))
; quick\x2Eqsrch\x2Ecom\s+Apofis\d+ToolBar
(assert (str.in_re X (re.++ (str.to_re "quick.qsrch.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Apofis") (re.+ (re.range "0" "9")) (str.to_re "ToolBar\u{a}"))))
; news\s+Host\x3A.*Peerwww\x2Elocators\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "news") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Peerwww.locators.com\u{a}")))))
; User-Agent\x3AChildWebGuardianHXDownloadX-Mailer\x3a
(assert (not (str.in_re X (str.to_re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\u{13}\u{a}"))))
(check-sat)
