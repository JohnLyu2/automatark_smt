(declare-const X String)
; /\x2ewri([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wri") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; From\x3aX-Mailer\x3Abacktrust\x2EcomReferer\x3aSupremewjpropqmlpohj\x2floLogsX-FILTERED-BY-GHOST\x3a
(assert (str.in_re X (str.to_re "From:X-Mailer:\u{13}backtrust.comReferer:Supremewjpropqmlpohj/loLogsX-FILTERED-BY-GHOST:\u{a}")))
(check-sat)

(exit)
