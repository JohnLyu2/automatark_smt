(declare-const X String)
; ^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.+ (str.to_re "_"))) (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.+ (str.to_re "-"))) (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.+ (str.to_re "."))) (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.+ (str.to_re "+"))))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "@") (re.* (re.union (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (str.to_re "-"))) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".")))) ((_ re.loop 1 63) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; <script.*/*>|</script>|<[a-zA-Z][^>]*=['"]+javascript:\w+.*['"]+>|<\w+[^>]*\son\w+=.*[ /]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.union (re.++ (str.to_re "script") (re.* re.allchar) (re.* (str.to_re "/")) (str.to_re ">")) (str.to_re "/script>") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to_re ">"))) (str.to_re "=") (re.+ (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re "javascript:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* re.allchar) (re.+ (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re ">")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.comp (str.to_re ">"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.* re.allchar) (re.* (re.union (str.to_re " ") (str.to_re "/"))) (str.to_re ">\u{a}"))))))
; CMDLoginExciteSubject\x3Adownloadfile\x2eorg
(assert (str.in_re X (str.to_re "CMDLoginExciteSubject:downloadfile.org\u{a}")))
(check-sat)
