(declare-const X String)
; Host\x3a.*UNSEEN\x22\s+Agentbody=\x2521\x2521\x2521Optix
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "UNSEEN\u{22}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}\u{a}"))))
(check-sat)

(exit)
