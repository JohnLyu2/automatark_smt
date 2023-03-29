(declare-const X String)
; \r\nSTATUS\x3AUser-Agent\x3AHost\x3aReferer\x3A
(assert (str.in_re X (str.to_re "\u{d}\u{a}STATUS:User-Agent:Host:Referer:\u{a}")))
; /\r\n\r\nsession\x3a\d{1,7}$/
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}\u{d}\u{a}session:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
