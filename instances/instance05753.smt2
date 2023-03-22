(declare-const X String)
; WebConnLibNETObserveUser-Agent\x3Ahave100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in_re X (str.to_re "WebConnLibNETObserveUser-Agent:have100013Agentsvr^^Merlin\u{13}\u{a}"))))
(check-sat)
