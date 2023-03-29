(declare-const X String)
; /[?&]filename=[^&]*?\x2e\x2e\x2f/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "?") (str.to_re "&")) (str.to_re "filename=") (re.* (re.comp (str.to_re "&"))) (str.to_re "..//Ui\u{a}")))))
; ([a-zA-Z]{2}[0-9]{1,2}\s{0,1}[0-9]{1,2}[a-zA-Z]{2})
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}")))
; ^[-]?\d*(\.\d*)$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.* (re.range "0" "9")) (str.to_re "\u{a}.") (re.* (re.range "0" "9")))))
; [\x80-\xFF]
(assert (not (str.in_re X (re.++ (re.range "\u{80}" "\u{ff}") (str.to_re "\u{a}")))))
(check-sat)

(exit)
