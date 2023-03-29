(declare-const X String)
; www\x2Eslinkyslate.*Redirector\x22.*Host\x3Atoolbarplace\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "www.slinkyslate") (re.* re.allchar) (str.to_re "Redirector\u{22}") (re.* re.allchar) (str.to_re "Host:toolbarplace.com\u{a}")))))
(check-sat)

(exit)
