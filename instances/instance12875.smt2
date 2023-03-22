(declare-const X String)
; [0-9a-fA-F]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}")))))
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (not (str.in_re X (str.to_re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\u{a}"))))
(check-sat)
