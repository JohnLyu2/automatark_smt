(declare-const X String)
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}")))
; /\x2ehpj([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.hpj") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\r\n\r\nsession\x3a\d{1,7}$/
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}\u{d}\u{a}session:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "/\u{a}")))))
(check-sat)

(exit)
