(declare-const X String)
; jar:file:/(([A-Z]:)?/([A-Z 0-9 * ( ) + \- & $ # @ _ . ! ~ /])+)(/[A-Z 0-9 _ ( ) \[ \] - = + _ ~]+\.jar!)
(assert (not (str.in_re X (re.++ (str.to_re "jar:file:/\u{a}") (re.opt (re.++ (re.range "A" "Z") (str.to_re ":"))) (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (str.to_re " ") (re.range "0" "9") (str.to_re "*") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "-") (str.to_re "&") (str.to_re "$") (str.to_re "#") (str.to_re "@") (str.to_re "_") (str.to_re ".") (str.to_re "!") (str.to_re "~") (str.to_re "/"))) (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (str.to_re " ") (re.range "0" "9") (str.to_re "_") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (re.range " " " ") (str.to_re "=") (str.to_re "+") (str.to_re "~"))) (str.to_re ".jar!")))))
(check-sat)

(exit)
