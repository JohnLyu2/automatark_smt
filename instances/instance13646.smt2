(declare-const X String)
; HWAEUser-Agent\x3ATestHost\x3Awww\x2Edotcomtoolbar\x2Ecom
(assert (str.in_re X (str.to_re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\u{a}")))
; \x0D\x0A\x0D\x0AAttached.*Host\x3A\s+ZC-Bridge
(assert (not (str.in_re X (re.++ (str.to_re "\u{d}\u{a}\u{d}\u{a}Attached") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ZC-Bridge\u{a}")))))
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (not (str.in_re X (re.++ (str.to_re "YAHOO") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/cs/pop4/\u{a}")))))
(check-sat)

(exit)
