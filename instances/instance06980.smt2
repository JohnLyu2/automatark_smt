(declare-const X String)
; \x23\x23\x23\x23Host\x3ASubject\x3Awww\x2Epcsentinelsoftware\x2EcomHost\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (str.in_re X (str.to_re "####Host:Subject:www.pcsentinelsoftware.comHost:WeHost:www.wowokay.com/wowokaybar.php\u{a}")))
; ^([1-9]+)?[13579]$
(assert (not (str.in_re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (str.to_re "\u{a}")))))
; href[\s]*=[\s]*"[^\n"]*"
(assert (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}"))))
; (private|public|protected)\s\w(.)*\((.)*\)[^;]
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* re.allchar) (str.to_re "(") (re.* re.allchar) (str.to_re ")") (re.comp (str.to_re ";")) (str.to_re "\u{a}p") (re.union (str.to_re "rivate") (str.to_re "ublic") (str.to_re "rotected"))))))
(check-sat)
