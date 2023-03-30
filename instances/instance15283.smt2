(declare-const X String)
; DA\dwww\x2Ee-finder\x2Ecc.*User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "DA") (re.range "0" "9") (str.to_re "www.e-finder.cc") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
; /\x2eeot([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.eot") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
