(declare-const X String)
; Server\s+www\x2Epeer2mail\x2Ecomsubject\x3AfileId\x3d\x5b
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.comsubject:fileId=[\u{a}")))))
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (not (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}")))))
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (str.in_re X (re.++ (str.to_re "/?new=") (re.* re.allchar) (str.to_re ":") (re.* re.allchar) (str.to_re "&v=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re "&av=/U\u{a}"))))
(check-sat)

(exit)
