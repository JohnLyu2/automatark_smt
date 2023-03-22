(declare-const X String)
; \r\nSTATUS\x3AUser-Agent\x3AHost\x3aReferer\x3A
(assert (not (str.in_re X (str.to_re "\u{d}\u{a}STATUS:User-Agent:Host:Referer:\u{a}"))))
(check-sat)
