(declare-const X String)
; /\x00{7}\x55\x00{3}\x21.{4}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 7 7) (str.to_re "\u{0}")) (str.to_re "U") ((_ re.loop 3 3) (str.to_re "\u{0}")) (str.to_re "!") ((_ re.loop 4 4) re.allchar) (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ")") (str.to_re ";")) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
