(declare-const X String)
; ^<\s*(td|TD)\s*(\w|\W)*\s*>(\w|\W)*</(td|TD)>$
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "td") (str.to_re "TD")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">") (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</") (re.union (str.to_re "td") (str.to_re "TD")) (str.to_re ">\u{a}")))))
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "sql") (re.* re.allchar) (str.to_re "badurl.grandstreetinteractive.com\u{a}")))))
; /filename=[^\n]*\x2exsl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xsl/i\u{a}")))))
; (@\s*".*?")|("([^"\\]|\\.)*?")
(assert (str.in_re X (re.union (re.++ (str.to_re "@") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.* re.allchar) (str.to_re "\u{22}")) (re.++ (str.to_re "\u{a}\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (str.to_re "\u{22}")))))
(check-sat)

(exit)
