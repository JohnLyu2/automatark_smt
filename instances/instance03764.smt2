(declare-const X String)
; /file=[\x7c\x27]/Ui
(assert (str.in_re X (re.++ (str.to_re "/file=") (re.union (str.to_re "|") (str.to_re "'")) (str.to_re "/Ui\u{a}"))))
(check-sat)

(exit)
