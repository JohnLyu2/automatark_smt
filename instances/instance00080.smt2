(declare-const X String)
; /^Cookie\x3a\s?SECID=[^\x3b]+?$/mD
(assert (not (str.in_re X (re.++ (str.to_re "/Cookie:") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SECID=") (re.+ (re.comp (str.to_re ";"))) (str.to_re "/mD\u{a}")))))
(check-sat)

(exit)
