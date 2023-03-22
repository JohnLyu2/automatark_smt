(declare-const X String)
; /^([A-Za-z]){1}([A-Za-z0-9-_.\:])+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re ".") (str.to_re ":"))) (str.to_re "/\u{a}")))))
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
; Subject\x3a\s+Yeah\!Online\x2521\x2521\x2521
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Yeah!Online%21%21%21\u{a}"))))
; /mmlocate[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in_re X (re.++ (str.to_re "/mmlocate") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}"))))
(check-sat)
