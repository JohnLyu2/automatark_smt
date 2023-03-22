(declare-const X String)
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (not (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}"))))
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (str.in_re X (str.to_re "User-Agent:Host:hasHost:ComputerKeylogger.com\u{a}")))
; /\x2eclass([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.class") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
