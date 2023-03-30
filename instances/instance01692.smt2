(declare-const X String)
; on\dName=Your\+Host\+is\x3AcdpViewHost\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "on") (re.range "0" "9") (str.to_re "Name=Your+Host+is:cdpViewHost:User-Agent:\u{a}"))))
(check-sat)

(exit)
