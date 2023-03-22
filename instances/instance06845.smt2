(declare-const X String)
; /filename=[^\n]*\x2emid/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mid/i\u{a}"))))
; emailFrom\x3AUser-Agent\x3AUser-Agent\x3Aselect\x2FGet
(assert (not (str.in_re X (str.to_re "emailFrom:User-Agent:User-Agent:select/Get\u{a}"))))
; ^[a-zA-Z]+(\.[a-zA-Z]+)+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}"))))
(check-sat)
