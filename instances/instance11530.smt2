(declare-const X String)
; User-Agent\x3a\s+Host\x3A\s+proxystylesheet=Excitefhfksjzsfu\x2fahm\.uqs
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\u{a}")))))
; ^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "@") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "."))) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
