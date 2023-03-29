(declare-const X String)
; as\x2Estarware\x2Ecom%3fUser-Agent\x3Ahostie
(assert (not (str.in_re X (str.to_re "as.starware.com%3fUser-Agent:hostie\u{a}"))))
(check-sat)

(exit)
