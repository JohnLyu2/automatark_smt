(declare-const X String)
; /filename=[^\n]*\x2emax/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".max/i\u{a}")))))
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (not (str.in_re X (str.to_re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\u{a}"))))
(check-sat)
