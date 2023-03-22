(declare-const X String)
; Stealth\x2EphpSpyAgentHost\x3AIterenetUser-Agent\x3AHost\x3AHost\x3Aorigin\x3Dsidefind
(assert (str.in_re X (str.to_re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\u{a}")))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}")))
(check-sat)
