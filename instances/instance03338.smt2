(declare-const X String)
; HTTPwwwProbnymomspyo\x2fzowy
(assert (str.in_re X (str.to_re "HTTPwwwProbnymomspyo/zowy\u{a}")))
(check-sat)

(exit)
