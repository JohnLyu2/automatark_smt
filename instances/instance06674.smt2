(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2epif[\x22\x27\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pif") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; url=\"([^\[\]\"]*)\"
(assert (str.in_re X (re.++ (str.to_re "url=\u{22}") (re.* (re.union (str.to_re "[") (str.to_re "]") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}"))))
; /\/[a-z]+\?[a-z]+\=[a-z]+$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re "?") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.range "a" "z")) (str.to_re "/U\u{a}"))))
; /^\x2f[A-Za-z0-9]{33}\?s=\d\&m=\d$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 33 33) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "?s=") (re.range "0" "9") (str.to_re "&m=") (re.range "0" "9") (str.to_re "/U\u{a}")))))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}")))))
(check-sat)
