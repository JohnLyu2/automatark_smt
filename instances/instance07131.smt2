(declare-const X String)
; ^([^\s]){5,12}$
(assert (str.in_re X (re.++ ((_ re.loop 5 12) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; /^User\x2DAgent\x3A\s*Mozilla\x0d?$/smiH
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Mozilla") (re.opt (str.to_re "\u{d}")) (str.to_re "/smiH\u{a}")))))
; c\.goclick\.com\s+URLBlaze\s+Host\x3A
(assert (str.in_re X (re.++ (str.to_re "c.goclick.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlaze") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
; updates\x5D\x2520\x5BPort_NETObserve
(assert (not (str.in_re X (str.to_re "updates]%20[Port_NETObserve\u{a}"))))
(check-sat)

(exit)
