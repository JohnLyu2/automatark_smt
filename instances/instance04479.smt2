(declare-const X String)
; ohgdhkzfhdzo\x2fuwpOK\r\nHost\x3A
(assert (not (str.in_re X (str.to_re "ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:\u{a}"))))
(check-sat)

(exit)
