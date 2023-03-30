(declare-const X String)
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (str.in_re X (str.to_re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\u{a}")))
(check-sat)

(exit)
