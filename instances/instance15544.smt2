(declare-const X String)
; \x5D\x2520\x5BPort_X-Mailer\x3AX-Mailer\x3awww\.actualnames\.comwebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "]%20[Port_X-Mailer:\u{13}X-Mailer:\u{13}www.actualnames.comwebsearch.getmirar.com\u{a}")))
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (str.in_re X (str.to_re "Stablecmemailyxegtd/efcwgUin=PromulGate\u{a}")))
; ^([A-Z]+\s*[A-Z]+)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.range "A" "Z")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "A" "Z")))))
; /\x2ette([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.tte") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
