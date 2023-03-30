(declare-const X String)
; /filename=[^\n]*\x2ejpeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpeg/i\u{a}")))))
; /\x2ek3g([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.k3g") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
