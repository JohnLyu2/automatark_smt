(declare-const X String)
; /\/stat_svc\/$/U
(assert (str.in_re X (str.to_re "//stat_svc//U\u{a}")))
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (not (str.in_re X (str.to_re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\u{a}"))))
(check-sat)
