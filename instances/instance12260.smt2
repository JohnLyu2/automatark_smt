(declare-const X String)
; ^((((0?[13578])|(1[02]))[\/|\-]?((0?[1-9]|[0-2][0-9])|(3[01])))|(((0?[469])|(11))[\/|\-]?((0?[1-9]|[0-2][0-9])|(30)))|(0?[2][\/\-]?(0?[1-9]|[0-2][0-9])))[\/\-]?\d{2,4}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.opt (re.union (str.to_re "/") (str.to_re "|") (str.to_re "-"))) (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.opt (re.union (str.to_re "/") (str.to_re "|") (str.to_re "-"))) (re.union (str.to_re "30") (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "0")) (str.to_re "2") (re.opt (re.union (str.to_re "/") (str.to_re "-"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9"))))) (re.opt (re.union (str.to_re "/") (str.to_re "-"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2eavi/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".avi/i\u{a}"))))
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}")))))
; /\x2ecnt([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.cnt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \b(((J(ANUARY|UNE|ULY))|FEBRUARY|MARCH|(A(PRIL|UGUST))|MAY|(SEPT|NOV|DEC)EMBER|OCTOBER))\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(200[0-9])\b
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "J") (re.union (str.to_re "ANUARY") (str.to_re "UNE") (str.to_re "ULY"))) (str.to_re "FEBRUARY") (str.to_re "MARCH") (re.++ (str.to_re "A") (re.union (str.to_re "PRIL") (str.to_re "UGUST"))) (str.to_re "MAY") (re.++ (re.union (str.to_re "SEPT") (str.to_re "NOV") (str.to_re "DEC")) (str.to_re "EMBER")) (str.to_re "OCTOBER")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}200") (re.range "0" "9"))))
(check-sat)
