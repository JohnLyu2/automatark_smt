(declare-const X String)
; ^(([a-zA-Z0-9]+([\-])?[a-zA-Z0-9]+)+(\.)?)+[a-zA-Z]{2,6}$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to_re ".")))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (str.in_re X (re.++ (str.to_re "Authorization:") (re.+ (re.range "0" "9")) (str.to_re "lnzzlnbk/pkrm.fin\u{a}"))))
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\/app\/\?prj=\d\x26pid=[^\r\n]+\x26mac=/Ui
(assert (str.in_re X (re.++ (str.to_re "//app/?prj=") (re.range "0" "9") (str.to_re "&pid=") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "&mac=/Ui\u{a}"))))
(check-sat)
