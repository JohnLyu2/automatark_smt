(declare-const X String)
; #^([a-z0-9+\-.]+):([/]{0,2}([a-z0-9\-._~%!\$&'\(\)\*+,;=:]+@)?([\[\]a-z0-9\-._~%!\$&'\(\)\*+,;=:]+(:[0-9]+)?))([a-z0-9\-._~%!\$&'\(\)\*+,;=:@/]*)(\?[\?/a-z0-9\-._~%!\$&'\(\)\*+,;=:@]+)?(\#[a-z0-9\-._~%!\$&'\(\)\*+,;=:@/\?]+)?#i
(assert (str.in_re X (re.++ (str.to_re "#") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "-") (str.to_re "."))) (str.to_re ":") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@") (str.to_re "/"))) (re.opt (re.++ (str.to_re "?") (re.+ (re.union (str.to_re "?") (str.to_re "/") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@"))))) (re.opt (re.++ (str.to_re "#") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@") (str.to_re "/") (str.to_re "?"))))) (str.to_re "#i\u{a}") ((_ re.loop 0 2) (str.to_re "/")) (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":"))) (str.to_re "@"))) (re.+ (re.union (str.to_re "[") (str.to_re "]") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))))))
(check-sat)

(exit)
