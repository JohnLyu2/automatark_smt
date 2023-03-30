(declare-const X String)
; ^(\[a-zA-Z '\]+)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}[a-zA-Z '") (re.+ (str.to_re "]")))))
; Host\x3AHost\x3afhfksjzsfu\x2fahm\.uqsHost\x3Afowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (str.to_re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\u{a}")))
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
(check-sat)

(exit)
