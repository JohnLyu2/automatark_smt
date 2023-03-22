(declare-const X String)
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "TOOLBARX-Mailer") (re.+ (str.to_re ":")) (str.to_re "dist.atlas-ia.com\u{a}")))))
; Keystrokes.*LOG.*Host\x3Awww\x2Eserverlogic3\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Keystrokes") (re.* re.allchar) (str.to_re "LOG") (re.* re.allchar) (str.to_re "Host:www.serverlogic3.com\u{a}")))))
(check-sat)
