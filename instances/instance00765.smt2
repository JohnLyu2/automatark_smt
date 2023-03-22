(declare-const X String)
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (not (str.in_re X (str.to_re "SpyBuddySubject:stats.drivecleaner.com\u{13}\u{a}"))))
(check-sat)
