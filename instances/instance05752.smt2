(declare-const X String)
; Web-Mail\dHost\x3AHost\x3ALOG
(assert (str.in_re X (re.++ (str.to_re "Web-Mail") (re.range "0" "9") (str.to_re "Host:Host:LOG\u{a}"))))
(check-sat)
