(declare-const X String)
; [p|P][\s]*[o|O][\s]*[b|B][\s]*[o|O][\s]*[x|X][\s]*[a-zA-Z0-9]*|\b[P|p]+(OST|ost|o|O)?\.?\s*[O|o|0]+(ffice|FFICE)?\.?\s*[B|b][O|o|0]?[X|x]+\.?\s+[#]?(\d+)*(\D+)*\b
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re "p") (str.to_re "|") (str.to_re "P")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "o") (str.to_re "|") (str.to_re "O")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "b") (str.to_re "|") (str.to_re "B")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "o") (str.to_re "|") (str.to_re "O")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "x") (str.to_re "|") (str.to_re "X")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (re.+ (re.union (str.to_re "P") (str.to_re "|") (str.to_re "p"))) (re.opt (re.union (str.to_re "OST") (str.to_re "ost") (str.to_re "o") (str.to_re "O"))) (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re "O") (str.to_re "|") (str.to_re "o") (str.to_re "0"))) (re.opt (re.union (str.to_re "ffice") (str.to_re "FFICE"))) (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "B") (str.to_re "|") (str.to_re "b")) (re.opt (re.union (str.to_re "O") (str.to_re "|") (str.to_re "o") (str.to_re "0"))) (re.+ (re.union (str.to_re "X") (str.to_re "|") (str.to_re "x"))) (re.opt (str.to_re ".")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "#")) (re.* (re.+ (re.range "0" "9"))) (re.* (re.+ (re.comp (re.range "0" "9")))) (str.to_re "\u{a}")))))
; ^(((2|8|9)\d{2})|((02|08|09)\d{2})|([1-9]\d{3}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /^\s*(http[s]*\:\/\/)?([wwW]{3}\.)+[a-zA-Z0-9]+\.[a-zA-Z]{2,3}.*$|^http[s]*\:\/\/[^w]{3}[a-zA-Z0-9]+\.[a-zA-Z]{2,3}.*$|http[s]*\:\/\/[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{2,3}.*$/;
(assert (str.in_re X (re.union (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "http") (re.* (str.to_re "s")) (str.to_re "://"))) (re.+ (re.++ ((_ re.loop 3 3) (re.union (str.to_re "w") (str.to_re "W"))) (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* re.allchar)) (re.++ (str.to_re "http") (re.* (str.to_re "s")) (str.to_re "://") ((_ re.loop 3 3) (re.comp (str.to_re "w"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* re.allchar)) (re.++ (str.to_re "http") (re.* (str.to_re "s")) (str.to_re "://") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 3) (re.range "0" "9")) (re.* re.allchar) (str.to_re "/;\u{a}")))))
(check-sat)
