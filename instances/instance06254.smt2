(declare-const X String)
; /^exec\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in_re X (re.++ (str.to_re "/exec|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}")))))
; ^((\+)?[1-9]{1,4})?([-\s\.\/])?((\(\d{1,4}\))|\d{1,4})(([-\s\.\/])?[0-9]{1,6}){2,6}(\s?(ext|x)\s?[0-9]{1,6})?$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) ((_ re.loop 1 4) (re.range "1" "9")))) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "(") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 1 4) (re.range "0" "9"))) ((_ re.loop 2 6) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 6) (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "ext") (str.to_re "x")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 6) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; href[\s]*=[\s]*"[^\n"]*"
(assert (not (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}")))))
; forum=related\x2Eyok\x2Ecom\sStarted\!$3
(assert (str.in_re X (re.++ (str.to_re "forum=related.yok.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Started!3\u{a}"))))
(check-sat)

(exit)
