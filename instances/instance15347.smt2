(declare-const X String)
; fhfksjzsfu\x2fahm\.uqs\s+Host\x3a\swww\.fast-finder\.com\sStarted\!$3
(assert (str.in_re X (re.++ (str.to_re "fhfksjzsfu/ahm.uqs") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Started!3\u{a}"))))
; X-Mailer\x3A\s+Toolbar\s+supremetoolbar\.comst=Host\x3A\x5Chome\/lordofsearchMicrosoftHost\x3a\+The\+password\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "supremetoolbar.comst=Host:\u{5c}home/lordofsearchMicrosoftHost:+The+password+is:\u{a}")))))
(check-sat)
