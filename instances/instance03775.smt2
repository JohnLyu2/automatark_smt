(declare-const X String)
; (^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m")))))))))
(check-sat)

(exit)
