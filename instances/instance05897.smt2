(declare-const X String)
; ^([\.\"\'-/ \(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\.\"\'-/\(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\,\.\"\'-/\(/)\s\[\]\\\<\>\;\:\{\}]?)([0-9]{4})$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re " ") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ",") (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
