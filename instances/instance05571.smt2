(declare-const X String)
; /appendChild\x28\s*document\x2ecreateElement\x28\s*[\x22\x27]button[\x22\x27].*?outerText\s*=\s*[\x22\x27]{2}/smi
(assert (not (str.in_re X (re.++ (str.to_re "/appendChild(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "document.createElement(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "button") (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* re.allchar) (str.to_re "outerText") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/smi\u{a}")))))
(check-sat)

(exit)
