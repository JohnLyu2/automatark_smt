(declare-const X String)
; /filename=[^\n]*\x2exfdl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xfdl/i\u{a}")))))
; /(<\/?)(\w+)([^>]*>)/e
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/e\u{a}<") (re.opt (str.to_re "/")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">"))))
; /^.{27}/sR
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 27 27) re.allchar) (str.to_re "/sR\u{a}"))))
; ^[\w]{3}(p|P|c|C|h|H|f|F|a|A|t|T|b|B|l|L|j|J|g|G)[\w][\d]{4}[\w]$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re "p") (str.to_re "P") (str.to_re "c") (str.to_re "C") (str.to_re "h") (str.to_re "H") (str.to_re "f") (str.to_re "F") (str.to_re "a") (str.to_re "A") (str.to_re "t") (str.to_re "T") (str.to_re "b") (str.to_re "B") (str.to_re "l") (str.to_re "L") (str.to_re "j") (str.to_re "J") (str.to_re "g") (str.to_re "G")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "\u{a}")))))
; /^\s+$|^$/gi
(assert (str.in_re X (re.union (re.++ (str.to_re "/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "/gi\u{a}"))))
(check-sat)
