(declare-const X String)
; from\x3AHost\x3awww\.thecommunicator\.net
(assert (not (str.in_re X (str.to_re "from:Host:www.thecommunicator.net\u{a}"))))
(check-sat)
