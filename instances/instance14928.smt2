(declare-const X String)
; ^[a-zA-Z]{1}[\w\sa-zA-Z\d_]*[^\s]$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}"))))
; Prodaosearch\x2EcomReferer\x3A007User-Agent\x3A
(assert (not (str.in_re X (str.to_re "Prodaosearch.comReferer:007User-Agent:\u{a}"))))
; GREATDriplineisUser-Agent\x3Alogs===========\x3E
(assert (str.in_re X (str.to_re "GREATDriplineisUser-Agent:logs===========>\u{a}")))
; /filename=[^\n]*\x2ermp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmp/i\u{a}"))))
; ^[^<>`~!/@\#}$%:;)(_^{&*=|'+]+$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "<") (str.to_re ">") (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "/") (str.to_re "@") (str.to_re "#") (str.to_re "}") (str.to_re "$") (str.to_re "%") (str.to_re ":") (str.to_re ";") (str.to_re ")") (str.to_re "(") (str.to_re "_") (str.to_re "^") (str.to_re "{") (str.to_re "&") (str.to_re "*") (str.to_re "=") (str.to_re "|") (str.to_re "'") (str.to_re "+"))) (str.to_re "\u{a}"))))
(check-sat)
