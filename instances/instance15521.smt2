(declare-const X String)
; <[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
; fsbuffsearch\x2econduit\x2ecomocllceclbhs\x2fgth
(assert (not (str.in_re X (str.to_re "fsbuffsearch.conduit.comocllceclbhs/gth\u{a}"))))
; /filename=[^\n]*\x2ewmx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmx/i\u{a}"))))
(check-sat)
