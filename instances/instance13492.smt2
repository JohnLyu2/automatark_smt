(declare-const X String)
; /appendChild\x28\s*document\x2ecreateElement\x28\s*[\x22\x27]button[\x22\x27].*?outerText\s*=\s*[\x22\x27]{2}/smi
(assert (str.in_re X (re.++ (str.to_re "/appendChild(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "document.createElement(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "button") (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* re.allchar) (str.to_re "outerText") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/smi\u{a}"))))
; X-Spam-Level:\s[*]{11}
(assert (str.in_re X (re.++ (str.to_re "X-Spam-Level:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 11 11) (str.to_re "*")) (str.to_re "\u{a}"))))
; (^13((\ )?\d){4}$)|(^1[38]00((\ )?\d){6}$)|(^(((\(0[23478]\))|(0[23478]))(\ )?)?\d((\ )?\d){7}$)
(assert (str.in_re X (re.union (re.++ (str.to_re "13") ((_ re.loop 4 4) (re.++ (re.opt (str.to_re " ")) (re.range "0" "9")))) (re.++ (str.to_re "1") (re.union (str.to_re "3") (str.to_re "8")) (str.to_re "00") ((_ re.loop 6 6) (re.++ (re.opt (str.to_re " ")) (re.range "0" "9")))) (re.++ (str.to_re "\u{a}") (re.opt (re.++ (re.union (re.++ (str.to_re "(0") (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "7") (str.to_re "8")) (str.to_re ")")) (re.++ (str.to_re "0") (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "7") (str.to_re "8")))) (re.opt (str.to_re " ")))) (re.range "0" "9") ((_ re.loop 7 7) (re.++ (re.opt (str.to_re " ")) (re.range "0" "9")))))))
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.asx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
