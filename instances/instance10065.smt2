(declare-const X String)
; href(\s*)=(\s*)('|")http:\/\/(.*)(("|'))
(assert (not (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "'") (str.to_re "\u{22}")) (str.to_re "http://") (re.* re.allchar) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "\u{a}")))))
; vbwwwc\.goclick\.compassword\x3B0\x3BIncorrect
(assert (not (str.in_re X (str.to_re "vbwwwc.goclick.compassword;0;Incorrect\u{a}"))))
; ^\d+(\.\d{2})?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "cyber@yahoo.comcuAgent\u{a}"))))
; is\s+lnzzlnbk\x2fpkrm\.fin\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (not (str.in_re X (re.++ (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:/toolbar/supremetb\u{a}")))))
(check-sat)

(exit)
