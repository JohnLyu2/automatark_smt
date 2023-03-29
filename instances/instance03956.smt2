(declare-const X String)
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}")))
(check-sat)

(exit)
