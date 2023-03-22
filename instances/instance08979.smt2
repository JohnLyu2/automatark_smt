(declare-const X String)
; Mirar_KeywordContent
(assert (str.in_re X (str.to_re "Mirar_KeywordContent\u{13}\u{a}")))
; /\x2f\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in_re X (re.++ (str.to_re "//{#") (re.+ (re.union (str.to_re "/") (str.to_re "{") (str.to_re "}"))) (str.to_re "}") (re.opt (str.to_re ".action")) (re.opt (str.to_re "/")) (str.to_re "/miU\u{a}")))))
(check-sat)
