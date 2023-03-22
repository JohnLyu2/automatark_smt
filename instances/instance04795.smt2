(declare-const X String)
; daosearch\x2EcomSubject\x3A
(assert (not (str.in_re X (str.to_re "daosearch.comSubject:\u{a}"))))
(check-sat)
