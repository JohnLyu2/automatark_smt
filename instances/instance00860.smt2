(declare-const X String)
; \x2Fxml\x2Ftoolbar\x2FExploiter
(assert (not (str.in_re X (str.to_re "/xml/toolbar/Exploiter\u{a}"))))
(check-sat)
