(declare-const X String)
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "cyber@yahoo.comcuAgent\u{a}")))))
; ^[/]*([^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}/)*[^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}$
(assert (str.in_re X (re.++ (re.* (str.to_re "/")) (re.* (re.++ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".")) ((_ re.loop 0 63) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "/"))) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".")) ((_ re.loop 0 63) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{a}"))))
; WindowsFrom\x3A\x2FCU1\-extreme\x2Ebiz
(assert (str.in_re X (str.to_re "WindowsFrom:/CU1-extreme.biz\u{a}")))
; ^[+-]?\d+(\,\d{3})*\.?\d*\%?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.opt (str.to_re "%")) (str.to_re "\u{a}"))))
; /^USER\x20(XP|98|95|NT|ME|WIN|2K3)\x2d\d+\x20\x2a\x20\x30\x20\x3a/mi
(assert (not (str.in_re X (re.++ (str.to_re "/USER ") (re.union (str.to_re "XP") (str.to_re "98") (str.to_re "95") (str.to_re "NT") (str.to_re "ME") (str.to_re "WIN") (str.to_re "2K3")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " * 0 :/mi\u{a}")))))
(check-sat)

(exit)
