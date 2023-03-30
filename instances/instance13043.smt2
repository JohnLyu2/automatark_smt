(declare-const X String)
; spyblpat.*is[^\n\r]*BarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hdPASSW=
(assert (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{a}"))))
; ([a-zA-Z0-9_\-\.]+)(@[a-zA-Z0-9_\-\.]+)
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (str.to_re "\u{a}@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re ".")))))))
; [ ]*=[ ]*[\"]*cid[ ]*:[ ]*([^\"<> ]+)
(assert (not (str.in_re X (re.++ (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (re.* (str.to_re "\u{22}")) (str.to_re "cid") (re.* (str.to_re " ")) (str.to_re ":") (re.* (str.to_re " ")) (re.+ (re.union (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re " "))) (str.to_re "\u{a}")))))
; [\+]?[\s]?(\d(\-|\s)?)?(\(\d{3}\)\s?|\d{3}\-?)\d{3}(-|\s-\s)?\d{4}(\s(ex|ext)\s?\d+)?
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.range "0" "9") (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "-") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "ext") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /[a-z\d\x2f\x2b\x3d]{100,300}/Pi
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 300) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/Pi\u{a}"))))
(check-sat)

(exit)
