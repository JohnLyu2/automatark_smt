(declare-const X String)
; /\x0aArray\x0a\x28\x0a\x20{4}\x5b[a-z\d]{11}\x5d\x20\x3d\x3e\x20\d{16}\x0a\x29/i
(assert (not (str.in_re X (re.++ (str.to_re "/\u{a}Array\u{a}(\u{a}") ((_ re.loop 4 4) (str.to_re " ")) (str.to_re "[") ((_ re.loop 11 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "] => ") ((_ re.loop 16 16) (re.range "0" "9")) (str.to_re "\u{a})/i\u{a}")))))
; ^\<(\w){1,}\>(.){0,}([\</]|[\<])(\w){1,}\>$
(assert (str.in_re X (re.++ (str.to_re "<") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">") (re.* re.allchar) (re.union (str.to_re "<") (str.to_re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">\u{a}"))))
; ^\s*[a-zA-Z,\s]+\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)
