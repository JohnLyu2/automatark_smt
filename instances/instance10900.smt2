(declare-const X String)
; ^(\(\d{2}\)?\s?|\d{2}(\-|\s))?\d{2,4}(\-|\s)?\d{4,5}$
(assert (str.in_re X (re.++ (re.opt (re.union (re.++ (str.to_re "(") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 5) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^([0-9]*\-?\ ?\/?[0-9]*)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (re.opt (str.to_re "-")) (re.opt (str.to_re " ")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9"))))))
; ^[/]*([^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}/)*[^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}$
(assert (str.in_re X (re.++ (re.* (str.to_re "/")) (re.* (re.++ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".")) ((_ re.loop 0 63) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "/"))) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".")) ((_ re.loop 0 63) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{a}"))))
; libManager\x2Edll\x5Eget
(assert (str.in_re X (str.to_re "libManager.dll^get\u{a}")))
; \d+\s*[.'-]\s*\d+\s*[\d+.m\"]*
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re ".") (str.to_re "'") (str.to_re "-")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.range "0" "9") (str.to_re "+") (str.to_re ".") (str.to_re "m") (str.to_re "\u{22}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
