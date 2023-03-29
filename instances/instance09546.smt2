(declare-const X String)
; /filename=[^\n]*\x2ecy3/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cy3/i\u{a}"))))
; /\x2empg([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mpg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
