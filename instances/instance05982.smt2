(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))
(check-sat)

(exit)
