(declare-const X String)
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (not (str.in_re X (str.to_re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\u{a}"))))
(check-sat)
