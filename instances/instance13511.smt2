(declare-const X String)
; /filename=[^\n]*\x2erdp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rdp/i\u{a}"))))
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}")))
; [0-9]*\.?[0-9]*[1-9]
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.range "1" "9") (str.to_re "\u{a}")))))
; \x2Frss\d+Host\x3aTCP\x2FAD\x2FULOGNetBusCookie\x3a
(assert (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBusCookie:\u{a}"))))
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (not (str.in_re X (str.to_re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\u{a}"))))
(check-sat)
