(declare-const X String)
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}")))))
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}"))))
; /filename=[^\n]*\x2exfdl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xfdl/i\u{a}"))))
(check-sat)
