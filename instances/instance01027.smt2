(declare-const X String)
; /[^/]+$
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.comp (str.to_re "/"))) (str.to_re "\u{a}"))))
(check-sat)
