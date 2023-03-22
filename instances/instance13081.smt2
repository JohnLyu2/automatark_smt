(declare-const X String)
; (([1-9])|(0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))\/(([0-9][0-9])|([1-2][0,9][0-9][0-9]))\s+(20|21|22|23|[01]\d|\d)(([:.][0-5]\d){1,2})$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "/") (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "9")) (re.range "0" "9") (re.range "0" "9"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "20") (str.to_re "21") (str.to_re "22") (str.to_re "23") (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "-") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "=") (str.to_re "/") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "%") (str.to_re "&") (str.to_re ",") (str.to_re ";") (str.to_re ":") (str.to_re "`") (str.to_re "~") (str.to_re ".") (str.to_re "$") (str.to_re "^") (str.to_re "{") (str.to_re "[") (str.to_re "(") (str.to_re "|") (str.to_re ")") (str.to_re "]") (str.to_re "}") (str.to_re "*") (str.to_re "+") (str.to_re "?") (str.to_re "\u{5c}") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
