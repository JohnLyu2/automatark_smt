(declare-const X String)
; /null[^\x7d]{0,50}\.body\.innerHTML\s*?\x3d\s*?[\x22\x27]{2}[^\x7d]{0,50}CollectGarbage\x28\s*?\x29[^\x7d]{0,250}document\.write\x28\s*?[\x22\x27]{2}/smi
(assert (str.in_re X (re.++ (str.to_re "/null") ((_ re.loop 0 50) (re.comp (str.to_re "}"))) (str.to_re ".body.innerHTML") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) ((_ re.loop 0 50) (re.comp (str.to_re "}"))) (str.to_re "CollectGarbage(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") ((_ re.loop 0 250) (re.comp (str.to_re "}"))) (str.to_re "document.write(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/smi\u{a}"))))
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Java/1./H\u{a}"))))
; /\&h=\d{5}$/iU
(assert (not (str.in_re X (re.++ (str.to_re "/&h=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/iU\u{a}")))))
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (str.in_re X (re.++ (str.to_re "/router=") (re.* re.allchar) (str.to_re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "&")) (str.to_re "/iP\u{a}"))))
; ^\d{5}-\d{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
