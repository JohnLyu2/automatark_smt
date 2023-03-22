(declare-const X String)
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Desktop") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:Toolbar\u{a}")))))
; Host\x3AInformationwww\x2Ezhongsou\x2EcomLitequick\x2Eqsrch\x2Ecom
(assert (str.in_re X (str.to_re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\u{a}")))
; /filename=[^\n]*\x2epui/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pui/i\u{a}")))))
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}")))
; href(\s*)=(\s*)('|")http:\/\/(.*)(("|'))
(assert (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "'") (str.to_re "\u{22}")) (str.to_re "http://") (re.* re.allchar) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "\u{a}"))))
(check-sat)
