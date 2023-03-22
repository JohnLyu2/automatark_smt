(declare-const X String)
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}")))))
(check-sat)
