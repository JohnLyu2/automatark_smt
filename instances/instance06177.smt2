(declare-const X String)
; /filename=[^\n]*\x2equo/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".quo/i\u{a}")))))
; X-Mailer\x3aSpyAgentRootHost\x3A
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}SpyAgentRootHost:\u{a}")))
(check-sat)

(exit)
