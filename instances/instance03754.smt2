(declare-const X String)
; (jar:)?file:/(([A-Z]:)?/([A-Z0-9\*\()\+\-\&$#@_.!~\[\]/])+)((/[A-Z0-9_()\[\]\-=\+_~]+\.jar!)|([^!])(/com/regexlib/example/))
(assert (str.in_re X (re.++ (re.opt (str.to_re "jar:")) (str.to_re "file:/") (re.union (re.++ (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re "=") (str.to_re "+") (str.to_re "~"))) (str.to_re ".jar!")) (re.++ (re.comp (str.to_re "!")) (str.to_re "/com/regexlib/example/"))) (str.to_re "\u{a}") (re.opt (re.++ (re.range "A" "Z") (str.to_re ":"))) (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "*") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "-") (str.to_re "&") (str.to_re "$") (str.to_re "#") (str.to_re "@") (str.to_re "_") (str.to_re ".") (str.to_re "!") (str.to_re "~") (str.to_re "[") (str.to_re "]") (str.to_re "/"))))))
(check-sat)

(exit)
