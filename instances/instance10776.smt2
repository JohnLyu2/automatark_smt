(declare-const X String)
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to_re "\u{d}\u{a}/Hm\u{a}"))))
; Subject\x3a\s+Yeah\!Online\x2521\x2521\x2521
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Yeah!Online%21%21%21\u{a}"))))
; User-Agent\x3A\s+ocllceclbhs\x2fgth.*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
; /filename=[^\n]*\x2efli/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fli/i\u{a}"))))
(check-sat)

(exit)
