(declare-const X String)
; ^[A-Za-z]:\\([^"*/:?|<>\\.\x00-\x20]([^"*/:?|<>\\\x00-\x1F]*[^"*/:?|<>\\.\x00-\x20])?\\)*$
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to_re ":\u{5c}") (re.* (re.++ (re.union (str.to_re "\u{22}") (str.to_re "*") (str.to_re "/") (str.to_re ":") (str.to_re "?") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re ".") (re.range "\u{0}" " ")) (re.opt (re.++ (re.* (re.union (str.to_re "\u{22}") (str.to_re "*") (str.to_re "/") (str.to_re ":") (str.to_re "?") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (re.range "\u{0}" "\u{1f}"))) (re.union (str.to_re "\u{22}") (str.to_re "*") (str.to_re "/") (str.to_re ":") (str.to_re "?") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re ".") (re.range "\u{0}" " ")))) (str.to_re "\u{5c}"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
