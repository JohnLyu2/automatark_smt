(declare-const X String)
; /\/[a-f0-9]{32}\.jar/
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".jar/\u{a}"))))
; /filename=[^\n]*\x2eair/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".air/i\u{a}")))))
; (((\d{0,2})\(\d{3}\))|(\d{3}-))\d{3}-\d{4}\s{0,}((([Ee][xX][Tt])|([Pp][Oo][Ss][Tt][Ee])):\d{1,5}){0,1}
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.union (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "x") (str.to_re "X")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "E") (str.to_re "e")))) (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
