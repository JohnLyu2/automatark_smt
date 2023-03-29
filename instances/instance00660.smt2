(declare-const X String)
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (not (str.in_re X (str.to_re "com/index.php?tpid=}{User:\u{a}"))))
(check-sat)

(exit)
