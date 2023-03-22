(declare-const X String)
; \x2Fxml\x2Ftoolbar\x2F
(assert (str.in_re X (str.to_re "/xml/toolbar/\u{a}")))
(check-sat)
