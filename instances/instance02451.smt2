(declare-const X String)
; richfind\x2EcomCookie\x3aName=Your\+Host\+is\x3A
(assert (not (str.in_re X (str.to_re "richfind.comCookie:Name=Your+Host+is:\u{a}"))))
(check-sat)
