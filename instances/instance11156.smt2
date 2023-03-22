(declare-const X String)
; ApofisAgentFunWebProductsUser-Agent\x3A
(assert (str.in_re X (str.to_re "ApofisAgentFunWebProductsUser-Agent:\u{a}")))
; 3ASoftwarephpinfoSpy\x2EnbdMailerX-Mailer\x3A195\.225\.Subject\x3a
(assert (not (str.in_re X (str.to_re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\u{13}195.225.Subject:\u{a}"))))
(check-sat)
