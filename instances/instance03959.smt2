(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2ewpd[\x22\x27\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wpd") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
(check-sat)

(exit)
