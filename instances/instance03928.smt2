(declare-const X String)
; \b[P|p]*(OST|ost)*\.*\s*[O|o|0]*(ffice|FFICE)*\.*\s*[B|b][O|o|0][X|x]\b
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "P") (str.to_re "|") (str.to_re "p"))) (re.* (re.union (str.to_re "OST") (str.to_re "ost"))) (re.* (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re "O") (str.to_re "|") (str.to_re "o") (str.to_re "0"))) (re.* (re.union (str.to_re "ffice") (str.to_re "FFICE"))) (re.* (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "B") (str.to_re "|") (str.to_re "b")) (re.union (str.to_re "O") (str.to_re "|") (str.to_re "o") (str.to_re "0")) (re.union (str.to_re "X") (str.to_re "|") (str.to_re "x")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
