(declare-const X String)
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in_re X (str.to_re "SAccsearchresltOnline100013Agentsvr^^Merlin\u{13}\u{a}"))))
(check-sat)
