(declare-const X String)
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wma/i\u{a}")))))
; /[?&]filename=[^&]*?\x2e\x2e\x2f/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "?") (str.to_re "&")) (str.to_re "filename=") (re.* (re.comp (str.to_re "&"))) (str.to_re "..//Ui\u{a}")))))
(check-sat)
