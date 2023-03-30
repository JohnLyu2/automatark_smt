(declare-const X String)
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (not (str.in_re X (str.to_re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\u{a}"))))
(check-sat)

(exit)
