(declare-const X String)
; (\w+[\.\_\-]*)*\w+@[\w]+(.)*\w+$
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "_") (str.to_re "-"))))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* re.allchar) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; ^[^\*]{0,}[\*]{0,1}[^\*]{0,}$
(assert (not (str.in_re X (re.++ (re.* (re.comp (str.to_re "*"))) (re.opt (str.to_re "*")) (re.* (re.comp (str.to_re "*"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2ecpe/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cpe/i\u{a}")))))
; /filename=[^\n]*\x2evsd/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vsd/i\u{a}")))))
; Host\x3A\s+Eyewww\x2Eccnnlc\x2EcomHost\x3aHost\x3a
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Eyewww.ccnnlc.com\u{13}Host:Host:\u{a}"))))
(check-sat)
