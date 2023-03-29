(declare-const X String)
; `.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i
(assert (str.in_re X (re.++ (str.to_re "`") (re.* re.allchar) (re.* (re.union (str.to_re "#") (str.to_re "$") (str.to_re "&") (str.to_re "+") (str.to_re ",") (str.to_re "/") (str.to_re ":") (str.to_re ";") (str.to_re "=") (str.to_re "?") (str.to_re "@") (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "`i\u{a}") (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://") (re.+ (re.union (str.to_re "#") (str.to_re "$") (str.to_re "&") (str.to_re "+") (str.to_re ",") (str.to_re "/") (str.to_re ":") (str.to_re ";") (str.to_re "=") (str.to_re "?") (str.to_re "@") (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
(check-sat)

(exit)
