(declare-const X String)
; Host\x3A.*Hello\x2E.*Referer\x3AToolbarCurrent\x3BCIA
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:ToolbarCurrent;CIA\u{a}"))))
(check-sat)
