(declare-const X String)
; ^([1-9]+[0-9]*|\d*[.,]\d)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.union (str.to_re ".") (str.to_re ",")) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; Toolbar\s+pjpoptwql\x2frlnjSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "pjpoptwql/rlnjSubject:\u{a}")))))
; \D
(assert (not (str.in_re X (re.++ (re.comp (re.range "0" "9")) (str.to_re "\u{a}")))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}"))))
(check-sat)

(exit)
