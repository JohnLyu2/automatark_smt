(declare-const X String)
; <script.*/*>|</script>|<[a-zA-Z][^>]*=['"]+javascript:\w+.*['"]+>|<\w+[^>]*\son\w+=.*[ /]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.union (re.++ (str.to_re "script") (re.* re.allchar) (re.* (str.to_re "/")) (str.to_re ">")) (str.to_re "/script>") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to_re ">"))) (str.to_re "=") (re.+ (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re "javascript:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* re.allchar) (re.+ (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re ">")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.comp (str.to_re ">"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.* re.allchar) (re.* (re.union (str.to_re " ") (str.to_re "/"))) (str.to_re ">\u{a}"))))))
(check-sat)

(exit)
