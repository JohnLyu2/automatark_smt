(declare-const X String)
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (not (str.in_re X (str.to_re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\u{a}"))))
(check-sat)

(exit)
