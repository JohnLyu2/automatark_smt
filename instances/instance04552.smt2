(declare-const X String)
; /[?&]filename=[^&]*?\x2e\x2e\x2f/Ui
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "?") (str.to_re "&")) (str.to_re "filename=") (re.* (re.comp (str.to_re "&"))) (str.to_re "..//Ui\u{a}"))))
(check-sat)
