(declare-const X String)
; /filename=[^\n]*\x2ehhk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hhk/i\u{a}")))))
; (\s(\bon[a-zA-Z][a-z]+)\s?\=\s?[\'\"]?(javascript\:)?[\w\(\),\' ]*;?[\'\"]?)+
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "'") (str.to_re "\u{22}"))) (re.opt (str.to_re "javascript:")) (re.* (re.union (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re "'") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ";")) (re.opt (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re "on") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.range "a" "z")))) (str.to_re "\u{a}")))))
; /^ver\x3aGhost\s+version\s+\d+\x2E\d+\s+server/smi
(assert (str.in_re X (re.++ (str.to_re "/ver:Ghost") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "server/smi\u{a}"))))
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}"))))
(check-sat)
