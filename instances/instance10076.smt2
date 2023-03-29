(declare-const X String)
; /filename=[^\n]*\x2ejpf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpf/i\u{a}"))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (str.in_re X (str.to_re "Host:toUser-Agent:ClientsConnected-\u{a}")))
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.asx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2egif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gif/i\u{a}")))))
(check-sat)

(exit)
