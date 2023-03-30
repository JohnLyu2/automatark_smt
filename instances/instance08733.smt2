(declare-const X String)
; RXFilteredDmInf\x5EJMailYeah\!Online\x2521\x2521\x2521Reportsversion\x2Etxt
(assert (not (str.in_re X (str.to_re "RXFilteredDmInf^JMailYeah!Online%21%21%21Reportsversion.txt\u{a}"))))
; www\.actualnames\.com\s+toolbar_domain_redirect\s+Contactfrom=GhostVoiceServer
(assert (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "toolbar_domain_redirect") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Contactfrom=GhostVoiceServer\u{a}"))))
(check-sat)

(exit)
