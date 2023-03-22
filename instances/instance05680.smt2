(declare-const X String)
; HTTPwwwProbnymomspyo\x2fzowy
(assert (not (str.in_re X (str.to_re "HTTPwwwProbnymomspyo/zowy\u{a}"))))
(check-sat)
