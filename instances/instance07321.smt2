(declare-const X String)
; www\x2Ewebcruiser\x2EccJMailBoxHostGENERAL_PARAM2FT
(assert (str.in_re X (str.to_re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\u{a}")))
; fsbuffsearch\x2econduit\x2ecomocllceclbhs\x2fgth
(assert (str.in_re X (str.to_re "fsbuffsearch.conduit.comocllceclbhs/gth\u{a}")))
(check-sat)
