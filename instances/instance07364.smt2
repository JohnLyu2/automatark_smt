(declare-const X String)
; /^User-Agent\x3A[^\r\n]*beagle_beagle/smiH
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "beagle_beagle/smiH\u{a}"))))
; \x3BCIA\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (not (str.in_re X (re.++ (str.to_re ";CIA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:\u{a}")))))
; Log[^\n\r]*Host\x3A\dHOST\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Log") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.range "0" "9") (str.to_re "HOST:User-Agent:\u{a}"))))
(check-sat)
