(declare-const X String)
; /\x2ef4v([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.f4v") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Iterenet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.mirarsearch.comHost:\u{a}")))))
; ^\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}$
(assert (str.in_re X (re.++ (str.to_re "{") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re "}\u{a}"))))
; /null[^\x7d]{0,50}\.body\.innerHTML\s*?\x3d\s*?[\x22\x27]{2}[^\x7d]{0,50}CollectGarbage\x28\s*?\x29[^\x7d]{0,250}document\.write\x28\s*?[\x22\x27]{2}/smi
(assert (not (str.in_re X (re.++ (str.to_re "/null") ((_ re.loop 0 50) (re.comp (str.to_re "}"))) (str.to_re ".body.innerHTML") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) ((_ re.loop 0 50) (re.comp (str.to_re "}"))) (str.to_re "CollectGarbage(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") ((_ re.loop 0 250) (re.comp (str.to_re "}"))) (str.to_re "document.write(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/smi\u{a}")))))
(check-sat)

(exit)
