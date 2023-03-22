(declare-const X String)
; A-311Host\x3Alnzzlnbk\x2fpkrm\.finSubject\x3a
(assert (not (str.in_re X (str.to_re "A-311Host:lnzzlnbk/pkrm.finSubject:\u{a}"))))
(check-sat)
