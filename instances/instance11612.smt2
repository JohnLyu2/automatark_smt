(declare-const X String)
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in_re X (str.to_re "ovplEchelonUser-Agent:User-Agent:Host:\u{a}")))
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}"))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}")))))
(check-sat)

(exit)
