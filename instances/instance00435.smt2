(declare-const X String)
; NETObserveSupervisorHost\x3Awebsearch\x2Edrsnsrch\x2Ecom
(assert (not (str.in_re X (str.to_re "NETObserveSupervisorHost:websearch.drsnsrch.com\u{13}\u{a}"))))
(check-sat)

(exit)
