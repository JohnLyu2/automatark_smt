(declare-const X String)
; PromulGate\s+SbAts.*Uservclxatmlhavj\x2fvsywww\x2Evip-se\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "PromulGate") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAts") (re.* re.allchar) (str.to_re "Uservclxatmlhavj/vsywww.vip-se.com\u{13}\u{a}"))))
(check-sat)
