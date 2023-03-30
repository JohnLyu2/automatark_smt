(declare-const X String)
; presentsearch\.netLocalHost\x3APORT\x3DWatchDogHost\x3A
(assert (str.in_re X (str.to_re "presentsearch.netLocalHost:PORT=WatchDogHost:\u{a}")))
(check-sat)

(exit)
