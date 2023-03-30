(declare-const X String)
; ^(sip|sips):.*\@((\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})|([a-zA-Z\-\.]+\.[a-zA-Z]{2,5}))(:[\d]{1,5})?([\w\-?\@?\;?\,?\=\%\&]+)?
(assert (str.in_re X (re.++ (str.to_re "sips:") (re.* re.allchar) (str.to_re "@") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) re.allchar ((_ re.loop 1 3) (re.range "0" "9")) re.allchar ((_ re.loop 1 3) (re.range "0" "9")) re.allchar ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (re.opt (re.+ (re.union (str.to_re "-") (str.to_re "?") (str.to_re "@") (str.to_re ";") (str.to_re ",") (str.to_re "=") (str.to_re "%") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
