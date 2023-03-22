(declare-const X String)
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (not (str.in_re X (str.to_re "RXnewads1.comSPYcom/index.php?tpid=\u{a}"))))
(check-sat)
