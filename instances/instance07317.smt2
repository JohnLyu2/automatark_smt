(declare-const X String)
; (INSERT INTO\s+)(\w+)(\s+\()([\w+,?\s*]+)(\)\s+VALUES\s+\()(['?\w+'?,?\s*]+)(\))
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re "+") (str.to_re ",") (str.to_re "?") (str.to_re "*") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re "'") (str.to_re "?") (str.to_re "+") (str.to_re ",") (str.to_re "*") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")\u{a}INSERT INTO") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "VALUES") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(")))))
; Host\x3A\s+Host\s+Host\x3aInformationX-OSSproxy\x3aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:InformationX-OSSproxy:as.starware.com\u{a}")))))
; ^[a-zA-Z0-9][a-zA-Z0-9_]{2,29}$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 29) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "\u{a}"))))
; (^(\+?\-? *[0-9]+)([,0-9 ]*)([0-9 ])*$)|(^ *$)
(assert (not (str.in_re X (re.union (re.++ (re.* (re.union (str.to_re ",") (re.range "0" "9") (str.to_re " "))) (re.* (re.union (re.range "0" "9") (str.to_re " "))) (re.opt (str.to_re "+")) (re.opt (str.to_re "-")) (re.* (str.to_re " ")) (re.+ (re.range "0" "9"))) (re.++ (re.* (str.to_re " ")) (str.to_re "\u{a}"))))))
(check-sat)
