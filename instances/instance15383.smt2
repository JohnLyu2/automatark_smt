(declare-const X String)
; ^([a-zA-Z])[a-zA-Z_-]*[\w_-]*[\S]$|^([a-zA-Z])[0-9_-]*[\S]$|^[a-zA-Z]*[\S]$
(assert (str.in_re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (re.* (re.union (str.to_re "_") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; ^([01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5") re.allchar (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5") re.allchar (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5") re.allchar (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "\u{a}")))))
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}")))
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:\u{a}"))))
; /\/i\.html\?[a-z0-9]+\=[a-zA-Z0-9]{25}/U
(assert (not (str.in_re X (re.++ (str.to_re "//i.html?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 25 25) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
(check-sat)

(exit)
