(declare-const X String)
; Log[^\n\r]*Host\x3A\dHOST\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Log") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.range "0" "9") (str.to_re "HOST:User-Agent:\u{a}"))))
; /\x2ebcl([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.bcl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^[$]?[0-9]*(\.)?[0-9]?[0-9]?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}"))))
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21\u{a}")))))
; ([^a-zA-Z0-9])
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
