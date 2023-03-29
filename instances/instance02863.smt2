(declare-const X String)
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\x3Asearchreslt
(assert (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV") (re.* re.allchar) (str.to_re "Host:searchreslt\u{a}"))))
(check-sat)

(exit)
