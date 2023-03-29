(declare-const X String)
; node=Host\x3A\x3Fsearch\x3DversionContactNETObserve
(assert (not (str.in_re X (str.to_re "node=Host:?search=versionContactNETObserve\u{a}"))))
(check-sat)

(exit)
