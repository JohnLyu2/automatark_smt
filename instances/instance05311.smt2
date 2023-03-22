(declare-const X String)
; \x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in_re X (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}")))
(check-sat)
