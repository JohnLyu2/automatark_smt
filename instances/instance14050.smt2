(declare-const X String)
; /filename=[^\n]*\x2emid/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mid/i\u{a}"))))
; presentsearch\.netLocalHost\x3APORT\x3DWatchDogHost\x3A
(assert (str.in_re X (str.to_re "presentsearch.netLocalHost:PORT=WatchDogHost:\u{a}")))
(check-sat)

(exit)
