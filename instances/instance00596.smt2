(declare-const X String)
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}")))))
(check-sat)
