(declare-const X String)
; /filename=[^\n]*\x2edws/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dws/i\u{a}")))))
; ^([\!#\$%&'\*\+/\=?\^`\{\|\}~a-zA-Z0-9_-]+[\.]?)+[\!#\$%&'\*\+/\=?\^`\{\|\}~a-zA-Z0-9_-]+@{1}((([0-9A-Za-z_-]+)([\.]{1}[0-9A-Za-z_-]+)*\.{1}([A-Za-z]){1,6})|(([0-9]{1,3}[\.]{1}){3}([0-9]{1,3}){1}))$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re "!") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "&") (str.to_re "'") (str.to_re "*") (str.to_re "+") (str.to_re "/") (str.to_re "=") (str.to_re "?") (str.to_re "^") (str.to_re "`") (str.to_re "{") (str.to_re "|") (str.to_re "}") (str.to_re "~") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (re.opt (str.to_re ".")))) (re.+ (re.union (str.to_re "!") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "&") (str.to_re "'") (str.to_re "*") (str.to_re "+") (str.to_re "/") (str.to_re "=") (str.to_re "?") (str.to_re "^") (str.to_re "`") (str.to_re "{") (str.to_re "|") (str.to_re "}") (str.to_re "~") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) ((_ re.loop 1 1) (str.to_re "@")) (re.union (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re "-"))) (re.* (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re "-"))))) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 1 6) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ".")))) ((_ re.loop 1 1) ((_ re.loop 1 3) (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; info\s+wjpropqmlpohj\x2flo\x2Ftoolbar\x2Fsupremetbhoroscope2Cookie\x3a
(assert (str.in_re X (re.++ (str.to_re "info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo/toolbar/supremetbhoroscope2Cookie:\u{a}"))))
; ^([1-9]+[0-9]* | [1-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.range "1" "9"))) (str.to_re "\u{a}"))))
; /^\/\?[a-z0-9]{2}\=[a-z1-9]{100}/siU
(assert (not (str.in_re X (re.++ (str.to_re "//?") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "1" "9"))) (str.to_re "/siU\u{a}")))))
(check-sat)

(exit)
