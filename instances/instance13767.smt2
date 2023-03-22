(declare-const X String)
; ((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}
(assert (not (str.in_re X (re.++ (re.opt (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (str.to_re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; (0?[1-9]|[12][0-9]|3[01])[.](0?[1-9]|1[012])[.]\d{4}
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re ".") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; (mailto\:|(news|(ht|f)tp(s?))\://)(([^[:space:]]+)|([^[:space:]]+)( #([^#]+)#)?)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://"))) (re.union (re.++ (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]"))) (re.++ (re.opt (re.++ (str.to_re " #") (re.+ (re.comp (str.to_re "#"))) (str.to_re "#"))) (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]")))) (str.to_re "\u{a}")))))
; ^(((\(\d{3}\)|\d{3})( |-|\.))|(\(\d{3}\)|\d{3}))?\d{3}( |-|\.)?\d{4}(( |-|\.)?([Ee]xt|[Xx])[.]?( |-|\.)?\d{4})?$
(assert (str.in_re X (re.++ (re.opt (re.union (re.++ (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.union (str.to_re " ") (str.to_re "-") (str.to_re "."))) (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "."))) (re.union (re.++ (re.union (str.to_re "E") (str.to_re "e")) (str.to_re "xt")) (str.to_re "X") (str.to_re "x")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "."))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
