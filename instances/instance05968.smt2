(declare-const X String)
; Host\x3A\sToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "ToolbarServerserver}{Sysuptime:\u{a}"))))
(check-sat)

(exit)
