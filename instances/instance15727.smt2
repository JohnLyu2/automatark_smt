(declare-const X String)
; [( ]?\d{1,3}[ )]?[ -]?\d{3}[ -]?\d{4}
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "(") (str.to_re " "))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re ")"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2evwr/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vwr/i\u{a}"))))
(check-sat)

(exit)
