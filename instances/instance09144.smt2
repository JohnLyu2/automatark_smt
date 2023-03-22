(declare-const X String)
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "ATTENTION:") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
; \x2Ehtml.*cm.*www\x2Epeer2mail\x2EcomConnectedStubbyawbeta\.net-nucleus\.com
(assert (str.in_re X (re.++ (str.to_re ".html") (re.* re.allchar) (str.to_re "cm") (re.* re.allchar) (str.to_re "www.peer2mail.comConnectedStubbyawbeta.net-nucleus.com\u{a}"))))
; ATL\w+SoftActivitypassword\x3B0\x3BIncorrect
(assert (str.in_re X (re.++ (str.to_re "ATL") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "SoftActivity\u{13}password;0;Incorrect\u{a}"))))
; ^[a-zA-Z]+(([\'\,\.\-][a-zA-Z])?[a-zA-Z]*)*$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to_re "'") (str.to_re ",") (str.to_re ".") (str.to_re "-")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}"))))
; ^[+-]?[0-9]+$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
