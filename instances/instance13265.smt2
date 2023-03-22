(declare-const X String)
; [\dA-Za-z]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
; \x2Fxml\x2Ftoolbar\x2F
(assert (str.in_re X (str.to_re "/xml/toolbar/\u{a}")))
(check-sat)
