(declare-const X String)
; ^(((((((00|\+)49[ \-/]?)|0)[1-9][0-9]{1,4})[ \-/]?)|((((00|\+)49\()|\(0)[1-9][0-9]{1,4}\)[ \-/]?))[0-9]{1,7}([ \-/]?[0-9]{1,5})?)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) (re.union (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49") (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/")))) (str.to_re "0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49(")) (str.to_re "(0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))))) ((_ re.loop 1 7) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 1 5) (re.range "0" "9")))))))
; [+-]?(0|[1-9]([0-9]{0,2})(,[0-9]{3})*)(\.[0-9]+)?
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; ^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}")))))
; (< *balise[ *>|:(.|\n)*>| (.|\n)*>](.|\n)*</balise *>)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<") (re.* (str.to_re " ")) (str.to_re "balise") (re.union (str.to_re " ") (str.to_re "*") (str.to_re ">") (str.to_re "|") (str.to_re ":") (str.to_re "(") (str.to_re ".") (str.to_re "\u{a}") (str.to_re ")")) (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</balise") (re.* (str.to_re " ")) (str.to_re ">")))))
; ^(b|B)(f|F)(p|P)(o|O)(\s*||\s*C(/|)O\s*)[0-9]{1,4}
(assert (str.in_re X (re.++ (re.union (str.to_re "b") (str.to_re "B")) (re.union (str.to_re "f") (str.to_re "F")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "o") (str.to_re "O")) (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "C/O") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
