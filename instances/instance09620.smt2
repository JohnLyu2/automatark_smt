(declare-const X String)
; /\x2ejpeg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jpeg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^([A-Z]{2}|[A-Z]\d|\d[A-Z])[1-9](\d{1,3})?$
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "A" "Z"))) (re.range "1" "9") (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; ((\d{1,5})*\.*(\d{0,3})"[W|D|H|DIA][X|\s]).*
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}") (re.* ((_ re.loop 1 5) (re.range "0" "9"))) (re.* (str.to_re ".")) ((_ re.loop 0 3) (re.range "0" "9")) (str.to_re "\u{22}") (re.union (str.to_re "W") (str.to_re "|") (str.to_re "D") (str.to_re "H") (str.to_re "I") (str.to_re "A")) (re.union (str.to_re "X") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; </?(\w+)(\s*\w*\s*=\s*("[^"]*"|';[^';]';|[^>]*))*|/?>
(assert (str.in_re X (re.union (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (str.to_re "';") (re.union (str.to_re "'") (str.to_re ";")) (str.to_re "';")) (re.* (re.comp (str.to_re ">"))))))) (re.++ (re.opt (str.to_re "/")) (str.to_re ">\u{a}")))))
; \b[A-Z-[DFIOQUWZ]]\d[A-Z-[DFIOQU]]\ +\d[A-Z-[DFIOQU]]\d\b
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (str.to_re "-") (str.to_re "[") (str.to_re "D") (str.to_re "F") (str.to_re "I") (str.to_re "O") (str.to_re "Q") (str.to_re "U") (str.to_re "W") (str.to_re "Z")) (str.to_re "]") (re.range "0" "9") (re.union (re.range "A" "Z") (str.to_re "-") (str.to_re "[") (str.to_re "D") (str.to_re "F") (str.to_re "I") (str.to_re "O") (str.to_re "Q") (str.to_re "U")) (str.to_re "]") (re.+ (str.to_re " ")) (re.range "0" "9") (re.union (re.range "A" "Z") (str.to_re "-") (str.to_re "[") (str.to_re "D") (str.to_re "F") (str.to_re "I") (str.to_re "O") (str.to_re "Q") (str.to_re "U")) (str.to_re "]") (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)

(exit)
