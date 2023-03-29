(declare-const X String)
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "SupportFiles\u{13}") (re.* re.allchar) (str.to_re "Referer:\u{a}"))))
; ^((CN=(['\w\d\s\-\&\.]+(\\/)*(\\,)*)+,\s*)*(OU=(['\w\d\s\-\&\.]+(\\/)*(\\,)*)+,\s*)*(DC=['\w\d\s\-\&]+[,]*\s*){1,}(DC=['\w\d\s\-\&]+\s*){1})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.++ (str.to_re "CN=") (re.+ (re.++ (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (str.to_re "\u{5c}/")) (re.* (str.to_re "\u{5c},")))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.* (re.++ (str.to_re "OU=") (re.+ (re.++ (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (str.to_re "\u{5c}/")) (re.* (str.to_re "\u{5c},")))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.+ (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (str.to_re ",")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 1 1) (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))
; ^[A-Za-z]{1,2}[0-9A-Za-z]{1,2}[ ]?[0-9]{0,1}[A-Za-z]{2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re " ")) (re.opt (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
