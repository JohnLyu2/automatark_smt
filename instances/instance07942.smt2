(declare-const X String)
; /filename=[^\n]*\x2erat/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rat/i\u{a}")))))
; ^\d{1,3}\.\d{1,4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; \x2Fxml\x2Ftoolbar\x2FExploiter
(assert (not (str.in_re X (str.to_re "/xml/toolbar/Exploiter\u{a}"))))
(check-sat)
