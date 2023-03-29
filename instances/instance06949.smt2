(declare-const X String)
; /filename=[^\n]*\x2ejfi/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfi/i\u{a}"))))
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to_re "www.altnet.com\u{1b}") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
; /\x2ehpj([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.hpj") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
