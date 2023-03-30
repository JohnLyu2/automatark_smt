(declare-const X String)
; ^([A-Z]{3,20}\s?[A-Z]{2}[0-9]{1,3}-([A-Z]{3}|[A-Z]{1}[0-9]{2}))|([A-Z]{1,20}\s[A-Z]{1,2}[0-9]{1,4}-[A-Z]{1,3})|([\d,\w,\s]{1,20}\s[A-Z]{3}-[0-9]{1,3})|([A-Z]{1,20}\s?[\d,\w,\s]{1,20})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 20) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "-") (re.union ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 20) (re.range "A" "Z")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 3) (re.range "A" "Z"))) (re.++ ((_ re.loop 1 20) (re.union (re.range "0" "9") (str.to_re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 3 3) (re.range "A" "Z")) (str.to_re "-") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 1 20) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 20) (re.union (re.range "0" "9") (str.to_re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))
; [a-z0-9][a-z0-9_\.-]{0,}[a-z0-9]\.[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9][\.][cn]{2,4}
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re ".") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re ".") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re ".") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 4) (re.union (str.to_re "c") (str.to_re "n"))) (str.to_re "\u{a}")))))
; ppcdomain\x2Eco\x2Euk.*Spy\-Locked\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.* re.allchar) (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/r/keys/keysS:Users\u{5c}Iterenet\u{a}"))))
; /^\/[A-Z]{6}$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 6 6) (re.range "A" "Z")) (str.to_re "/U\u{a}"))))
(check-sat)

(exit)
