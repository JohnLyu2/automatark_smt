(declare-const X String)
; LOGNetBusCookie\x3aToolbar
(assert (not (str.in_re X (str.to_re "LOGNetBusCookie:Toolbar\u{a}"))))
; /filename=[^\n]*\x2emim/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mim/i\u{a}"))))
; ProAgentHost\x3aHost\x3AiOpuss_sq=aolsnssigninwininet
(assert (not (str.in_re X (str.to_re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\u{a}"))))
(check-sat)
