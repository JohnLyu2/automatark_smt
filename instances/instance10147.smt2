(declare-const X String)
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (not (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}"))))
; Host\x3AHost\x3ALOGServer\.compressxpsp2-toolbar\x2Ehotblox\x2EcomAttached100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in_re X (str.to_re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\u{13}\u{a}"))))
(check-sat)

(exit)
