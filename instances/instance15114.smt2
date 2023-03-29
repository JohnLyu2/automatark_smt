(declare-const X String)
; ^((0?[1-9])|((1|2)[0-9])|30|31)$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30") (str.to_re "31")) (str.to_re "\u{a}"))))
; (\d+(-\d+)*)+(,\d+(-\d+)*)*
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))))) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2eflv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flv/i\u{a}")))))
; ^([\.\"\'-/ \(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\.\"\'-/\(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\,\.\"\'-/\(/)\s\[\]\\\<\>\;\:\{\}]?)([0-9]{4})$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re " ") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ",") (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
