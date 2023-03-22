(declare-const X String)
; /\/vic\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (str.in_re X (re.++ (str.to_re "//vic.aspx?ver=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; Host\x3A\s+www\x2Einternet-optimizer\x2EcomToolBarKeylogger
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.comToolBarKeylogger\u{a}"))))
(check-sat)
