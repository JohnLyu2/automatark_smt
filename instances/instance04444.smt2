(declare-const X String)
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (str.in_re X (re.union (str.to_re "/") (str.to_re "?") (str.to_re "-") (str.to_re "+") (str.to_re "=") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "@") (str.to_re "!") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "}") (str.to_re "]") (str.to_re "[") (str.to_re "{") (str.to_re ";") (str.to_re ":") (str.to_re "'") (str.to_re "\u{22}") (str.to_re ",") (str.to_re ".") (str.to_re ">") (str.to_re "<") (str.to_re "*") (re.range "0" "9") (str.to_re "(") (str.to_re ")") (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")) (re.range "A" "Z") (re.range "a" "z"))))
(check-sat)

(exit)
