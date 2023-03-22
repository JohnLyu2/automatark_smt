(declare-const X String)
; S\x3aUsers\x5cIterenetSend=User-Agent\x3A
(assert (not (str.in_re X (str.to_re "S:Users\u{5c}IterenetSend=User-Agent:\u{a}"))))
(check-sat)
