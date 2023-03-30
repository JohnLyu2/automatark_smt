(declare-const X String)
; www\x2Ewebcruiser\x2EccJMailBoxHostGENERAL_PARAM2FT
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\u{a}"))))
(check-sat)

(exit)
