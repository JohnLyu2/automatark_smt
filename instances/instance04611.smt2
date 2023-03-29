(declare-const X String)
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (not (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "SpyBuddy\u{a}")))))
(check-sat)

(exit)
