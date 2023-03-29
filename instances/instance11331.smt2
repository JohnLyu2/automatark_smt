(declare-const X String)
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Server") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:Host:Bar/newsurfer4/\u{a}")))))
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (str.to_re "MSNLOGOVNUsertooffers.bullseye-network.com\u{a}")))
; node=Host\x3A\x3Fsearch\x3DversionContactNETObserve
(assert (not (str.in_re X (str.to_re "node=Host:?search=versionContactNETObserve\u{a}"))))
(check-sat)

(exit)
