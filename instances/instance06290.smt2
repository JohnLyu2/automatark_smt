(declare-const X String)
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}")))
; [a-z0-9]{1,11}
(assert (str.in_re X (re.++ ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (str.in_re X (re.++ (str.to_re "/POST /g") (re.union (str.to_re "a") (str.to_re "o")) (str.to_re "lfstream&/\u{a}"))))
; ^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)
