(declare-const X String)
; /\/[a-zA-Z_-]+\.ee$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".ee/U\u{a}"))))
; User-Agent\x3A\w+Owner\x3A\w+Wordixqshv\x2fqzccsServer\x00MyBYReferer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Wordixqshv/qzccsServer\u{0}MyBYReferer:www.ccnnlc.com\u{13}\u{4}\u{0}\u{a}"))))
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "SupportFiles\u{13}") (re.* re.allchar) (str.to_re "Referer:\u{a}")))))
(check-sat)

(exit)
