(declare-const X String)
; URLUBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "URLUBAgent%3fSchwindlerurl=Host:httpUser-Agent:\u{a}"))))
(check-sat)
