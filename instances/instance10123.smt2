(declare-const X String)
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (str.in_re X (re.++ (str.to_re "www.cameup.com\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.ini\u{a}"))))
; presentsearch\.netLocalHost\x3APORT\x3DWatchDogHost\x3A
(assert (str.in_re X (str.to_re "presentsearch.netLocalHost:PORT=WatchDogHost:\u{a}")))
(check-sat)
