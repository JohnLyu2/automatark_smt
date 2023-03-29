(declare-const X String)
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:Welcome/communicatortbGateCrasher\u{a}")))))
; ^[+-]?[0-9]*\.?([0-9]?)*
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.opt (re.range "0" "9"))) (str.to_re "\u{a}")))))
; \x22StarLogger\x22\w+Host\x3aSoftwareHost\x3AjokeWEBCAM-
(assert (str.in_re X (re.++ (str.to_re "\u{22}StarLogger\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:jokeWEBCAM-\u{a}"))))
(check-sat)

(exit)
