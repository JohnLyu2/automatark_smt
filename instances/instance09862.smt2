(declare-const X String)
; Host\x3asearchresltwww\x2Ewordiq\x2Ecomwww2\x2einstantbuzz\x2ecom
(assert (str.in_re X (str.to_re "Host:searchresltwww.wordiq.com\u{1b}www2.instantbuzz.com\u{a}")))
; ref\x3D\x25user\x5Fid\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}")))))
; updates\x5D\x2520\x5BPort_NETObserve
(assert (not (str.in_re X (str.to_re "updates]%20[Port_NETObserve\u{a}"))))
(check-sat)
