(declare-const X String)
; SpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (not (str.in_re X (str.to_re "SpyBuddyZOMBIES_HTTP_GETearch.earthlink\u{a}"))))
(check-sat)

(exit)
