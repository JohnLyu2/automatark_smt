(declare-const X String)
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (str.in_re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (str.in_re X (str.to_re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\u{a}")))
(check-sat)

(exit)
