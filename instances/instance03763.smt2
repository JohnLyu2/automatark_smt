(declare-const X String)
; User-Agent\x3ARunnerads\.grokads\.comHost\x3Amcndvwoemn\x2flvv\.jde
(assert (str.in_re X (str.to_re "User-Agent:Runnerads.grokads.comHost:mcndvwoemn/lvv.jde\u{a}")))
(check-sat)

(exit)
