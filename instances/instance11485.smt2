(declare-const X String)
; /\x2exbm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xbm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; GmbH\x2FcommunicatortbHost\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (str.in_re X (str.to_re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\u{a}")))
(check-sat)

(exit)
