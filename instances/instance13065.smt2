(declare-const X String)
; ((\d{4})|(\d{2}))|(0?[2469]|11)(-|\/)((0[0-9])|([12])([0-9]?)|(3[0]?))(-|\/)((0?[13578]|10|12)(-|\/)((0[0-9])|([12])([0-9]?)|(3[01]?))(-|\/)((\d{4}|\d{2})))
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (str.to_re "0")))) (re.union (str.to_re "-") (str.to_re "/")) (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (re.union (str.to_re "0") (str.to_re "1"))))) (re.union (str.to_re "-") (str.to_re "/")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Eye") (re.* re.allchar) (str.to_re "http://supremetoolbar\u{a}")))))
; ^(([0]?[1-9]|[1][0-2])[\/|\-|\.]([0-2]\d|[3][0-1]|[1-9])[\/|\-|\.]([2][0])?\d{2}\s+((([0][0-9]|[1][0-2]|[0-9])[\:|\-|\.]([0-5]\d)\s*([aApP][mM])?)|(([0-1][0-9]|[2][0-3]|[0-9])[\:|\-|\.]([0-5]\d))))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (str.to_re "/") (str.to_re "|") (str.to_re "-") (str.to_re ".")) (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1")) (re.range "1" "9")) (re.union (str.to_re "/") (str.to_re "|") (str.to_re "-") (str.to_re ".")) (re.opt (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2")) (re.range "0" "9")) (re.union (str.to_re ":") (str.to_re "|") (str.to_re "-") (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.union (str.to_re "a") (str.to_re "A") (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "m") (str.to_re "M")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3")) (re.range "0" "9")) (re.union (str.to_re ":") (str.to_re "|") (str.to_re "-") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9"))))))
; /\x2edws([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.dws") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
