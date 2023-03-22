(declare-const X String)
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (not (str.in_re X (str.to_re "User-Agent:BetaWordixqshv/qzccsServer\u{0}\u{a}"))))
(check-sat)
