(declare-const X String)
; ^(eth[0-9]$)|(^eth[0-9]:[1-9]$)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "eth") (re.range "0" "9")) (re.++ (str.to_re "\u{a}eth") (re.range "0" "9") (str.to_re ":") (re.range "1" "9"))))))
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "data.warezclient.comHost:User-Agent:\u{a}"))))
; /\x2emswmm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mswmm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (not (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}")))))
(check-sat)
