(declare-const X String)
; EFError.*\x2Fcs\x2Fpop4\x2F\s+
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "/cs/pop4/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ixqshv\x2fqzccsMM_RECO\x2EEXE%3fwwwwp-includes\x2Ftheme\x2Ephp\x3F
(assert (not (str.in_re X (str.to_re "ixqshv/qzccsMM_RECO.EXE%3fwwwwp-includes/theme.php?\u{a}"))))
; xmlHost\x3ADAPCURLBlazeActivity
(assert (not (str.in_re X (str.to_re "xmlHost:DAPCURLBlazeActivity\u{a}"))))
; ^([a-z-[dfioquwz]]|[A-Z-[DFIOQUWZ]])\d([a-z-[dfioqu]]|[A-Z-[DFIOQU]])(\s)?\d([a-z-[dfioqu]]|[A-Z-[DFIOQU]])\d$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "[") (str.to_re "d") (str.to_re "f") (str.to_re "i") (str.to_re "o") (str.to_re "q") (str.to_re "u") (str.to_re "w") (str.to_re "z")) (str.to_re "]")) (re.++ (re.union (re.range "A" "Z") (str.to_re "-") (str.to_re "[") (str.to_re "D") (str.to_re "F") (str.to_re "I") (str.to_re "O") (str.to_re "Q") (str.to_re "U") (str.to_re "W") (str.to_re "Z")) (str.to_re "]"))) (re.range "0" "9") (re.union (re.++ (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "[") (str.to_re "d") (str.to_re "f") (str.to_re "i") (str.to_re "o") (str.to_re "q") (str.to_re "u")) (str.to_re "]")) (re.++ (re.union (re.range "A" "Z") (str.to_re "-") (str.to_re "[") (str.to_re "D") (str.to_re "F") (str.to_re "I") (str.to_re "O") (str.to_re "Q") (str.to_re "U")) (str.to_re "]"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.range "0" "9") (re.union (re.++ (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "[") (str.to_re "d") (str.to_re "f") (str.to_re "i") (str.to_re "o") (str.to_re "q") (str.to_re "u")) (str.to_re "]")) (re.++ (re.union (re.range "A" "Z") (str.to_re "-") (str.to_re "[") (str.to_re "D") (str.to_re "F") (str.to_re "I") (str.to_re "O") (str.to_re "Q") (str.to_re "U")) (str.to_re "]"))) (re.range "0" "9") (str.to_re "\u{a}")))))
; ^(\$)?(\s)?(\-)?((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{2,})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
