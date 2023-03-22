(declare-const X String)
; (\b(1|2|3|4|5|6|7|8|9)?[0-9]\b)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.range "0" "9"))))
; /filename=[^\n]*\x2exlsx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xlsx/i\u{a}"))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}"))))
; [0][x][0-9a-fA-F]+
(assert (str.in_re X (re.++ (str.to_re "0x") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
; e2give\.com.*Redirector\x22.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Redirector\u{22}") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)
