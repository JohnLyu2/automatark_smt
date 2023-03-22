(declare-const X String)
; Subject\x3AEnTrYExplorer\x2APORT2\x2AHost\x3A
(assert (str.in_re X (str.to_re "Subject:EnTrYExplorer*PORT2*Host:\u{a}")))
(check-sat)
