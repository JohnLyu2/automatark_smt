(declare-const X String)
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (not (str.in_re X (str.to_re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\u{a}"))))
(check-sat)

(exit)
