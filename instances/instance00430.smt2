(declare-const X String)
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (str.in_re X (str.to_re "/\u{b6}\u{b6}\u{ff}\u{ff}\u{ff}\u{ff}/\u{a}")))
(check-sat)
