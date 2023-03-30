(declare-const X String)
; ^((([a-z0-9])+([\w.-]{1})?)+([^\W_]{1}))+@((([a-z0-9])+([\w-]{1})?)+([^\W_]{1}))+\.[a-z]{2,3}(\.[a-z]{2,4})?$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "_"))))) (str.to_re "@") (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "_"))))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 4) (re.range "a" "z")))) (str.to_re "\u{a}"))))
; /^Host\x3a\x20\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\r?\n/Hsmi
(assert (str.in_re X (re.++ (str.to_re "/Host: ") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re "\u{d}")) (str.to_re "\u{a}/Hsmi\u{a}"))))
; Basic\s+news\s+CD\x2Furl=Host\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Basic") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "news") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/url=Host:\u{a}")))))
(check-sat)

(exit)
