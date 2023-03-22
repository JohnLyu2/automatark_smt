(declare-const X String)
; pass=Referer\x3ASurveillance
(assert (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}")))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:\u{a}"))))
(check-sat)
