(declare-const X String)
; Host\x3A.*User-Agent\x3a\sRequest
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Request\u{a}")))))
; ^(([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+)|((([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+))\:)*(([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+)))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to_re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.* (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to_re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re ":"))) (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to_re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to_re ".") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}")))))
; AdTools\sdownloadfile\x2eorg\w+com\x3E[^\n\r]*as\x2Estarware\x2EcomOS\x2FSSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in_re X (re.++ (str.to_re "AdTools") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "com>") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "as.starware.comOS/SSKCstech.web-nexus.net\u{a}")))))
(check-sat)

(exit)
