(declare-const X String)
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}")))))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (not (str.in_re X (re.++ (str.to_re "Google") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:FILESIZE>\u{13}\u{a}")))))
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (not (str.in_re X (str.to_re "RXnewads1.comSPYcom/index.php?tpid=\u{a}"))))
(check-sat)
