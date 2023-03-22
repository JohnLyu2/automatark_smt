(declare-const X String)
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}")))))
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (not (str.in_re X (str.to_re "/cs/pop4/A-Spywww.yoogee.com\u{13}\u{a}"))))
(check-sat)
