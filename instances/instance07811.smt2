(declare-const X String)
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}")))))
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}")))
(check-sat)

(exit)
