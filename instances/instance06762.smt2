(declare-const X String)
; /\x00{7}\x53\x00{3}\x16.{8}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 7 7) (str.to_re "\u{0}")) (str.to_re "S") ((_ re.loop 3 3) (str.to_re "\u{0}")) (str.to_re "\u{16}") ((_ re.loop 8 8) re.allchar) (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ")") (str.to_re ";")) (str.to_re "/\u{a}")))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
