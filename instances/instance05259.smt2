(declare-const X String)
; Host\x3Ahjhgquqssq\x2fpjmonHost\x3AHost\x3AA-311byName=Your\+Host\+is\x3A
(assert (str.in_re X (str.to_re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\u{a}")))
(check-sat)
