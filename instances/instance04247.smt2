(declare-const X String)
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}")))
(check-sat)

(exit)
