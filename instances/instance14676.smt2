(declare-const X String)
; FTP.*www\x2Ewordiq\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}")))))
; [\w-]+@([\w-]+\.)+[\w-]+
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; Server\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar\x2Ehtml%3fSubject\x3AEveryware
(assert (str.in_re X (str.to_re "Server/download/toolbar/locatorstoolbar.html%3fSubject:Everyware\u{a}")))
(check-sat)

(exit)
