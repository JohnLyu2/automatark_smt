(declare-const X String)
; ToolbarUser-Agent\x3AFrom\x3A
(assert (not (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}"))))
(check-sat)
