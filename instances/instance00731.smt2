(declare-const X String)
; X-Mailer\x3aSpyAgentRootHost\x3A
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}SpyAgentRootHost:\u{a}"))))
(check-sat)
