(declare-const X String)
; /filename=[^\n]*\x2ewmx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmx/i\u{a}"))))
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (not (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}"))))
; onAlertMGS-Internal-Web-Manager
(assert (not (str.in_re X (str.to_re "onAlertMGS-Internal-Web-Manager\u{a}"))))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (not (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}"))))
; /\x2ewax([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wax") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
