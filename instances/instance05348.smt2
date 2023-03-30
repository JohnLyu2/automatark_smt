(declare-const X String)
; InformationSubject\x3ASpynovabyBlacksnprtz\x7CdialnoSearch
(assert (not (str.in_re X (str.to_re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\u{a}"))))
(check-sat)

(exit)
