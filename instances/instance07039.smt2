(declare-const X String)
; Uin=\s+\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Uin=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".htaServerTheef2trustyfiles.comlogsHost:\u{a}")))))
; Host\x3A.*rt[^\n\r]*Host\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "rt") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:\u{a}"))))
; \x3BCIA\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (not (str.in_re X (re.++ (str.to_re ";CIA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:\u{a}")))))
; ^0[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (str.in_re X (re.++ (str.to_re "0") ((_ re.loop 1 1) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "8") (str.to_re "9"))) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.union (str.to_re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
