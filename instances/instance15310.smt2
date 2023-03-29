(declare-const X String)
; TPSystemad\x2Esearchsquire\x2Ecomv\x2EHost\x3Ahotbar
(assert (not (str.in_re X (str.to_re "TPSystemad.searchsquire.comv.Host:hotbar\u{a}"))))
; /\x2emswmm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mswmm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
