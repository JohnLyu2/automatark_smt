(declare-const X String)
; /[a-z\d\x2f\x2b\x3d]{100,300}/Pi
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 300) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/Pi\u{a}"))))
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}")))
; ^([^ \x21-\x26\x28-\x2C\x2E-\x40\x5B-\x60\x7B-\xAC\xAE-\xBF\xF7\xFE]+)$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\u{ac}") (re.range "\u{ae}" "\u{bf}") (str.to_re "\u{f7}") (str.to_re "\u{fe}"))) (str.to_re "\u{a}"))))
; /file=[\x7c\x27]/Ui
(assert (str.in_re X (re.++ (str.to_re "/file=") (re.union (str.to_re "|") (str.to_re "'")) (str.to_re "/Ui\u{a}"))))
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (str.in_re X (str.to_re "Host:.exePass-OnHost:.exe/toolbar/\u{a}")))
(check-sat)

(exit)
