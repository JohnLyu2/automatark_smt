(declare-const X String)
; Host\x3A\dName=Your\+Host\+is\x3A.*has\s+ComputerKeylogger\x2EcomHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:") (re.* re.allchar) (str.to_re "has") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ComputerKeylogger.comHost:\u{a}"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}"))))
; ^(\+[1-9]\d+) ([1-9]\d+) ([1-9]\d+)(\-\d+){0,1}$|^(0\d+) ([1-9]\d+)(\-\d+){0,1}$|^([1-9]\d+)(\-\d+){0,1}$
(assert (str.in_re X (re.union (re.++ (str.to_re "  ") (re.opt (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))) (str.to_re "+") (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (str.to_re " ") (re.opt (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))) (str.to_re "0") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}") (re.range "1" "9") (re.+ (re.range "0" "9"))))))
(check-sat)

(exit)
