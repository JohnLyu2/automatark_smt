(declare-const X String)
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; Subject\x3areportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (str.in_re X (str.to_re "Host:HANDYwww.purityscan.com\u{a}")))
(check-sat)
