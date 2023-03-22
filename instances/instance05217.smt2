(declare-const X String)
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Desktop") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:Toolbar\u{a}")))))
(check-sat)
