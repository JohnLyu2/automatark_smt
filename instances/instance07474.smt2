(declare-const X String)
; ^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w ]*))+\.(txt|TXT)$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (re.opt (str.to_re "$")) ((_ re.loop 2 2) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.+ (re.++ (str.to_re "\u{5c}") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".") (re.union (str.to_re "txt") (str.to_re "TXT")) (str.to_re "\u{a}"))))
; ^([(]?[+]{1}[0-9]{1,3}[)]?[ .\-]?)?[(]?[0-9]{3}[)]?[ .\-]?([0-9]{3}[ .\-]?[0-9]{4}|[a-zA-Z0-9]{7})([ .\-]?[/]{1}[ .\-]?[0-9]{2,4})?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "(")) ((_ re.loop 1 1) (str.to_re "+")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))))) (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 1 1) (str.to_re "/")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 2 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:\u{a}")))))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (str.in_re X (re.++ (str.to_re "wowokay") (re.+ (re.range "0" "9")) (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Filtered\u{22}reaction.txt\u{22}\u{a}"))))
; ^[a-zA-Z0-9][a-zA-Z0-9-_.]{2,8}[a-zA-Z0-9]$
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 8) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re "."))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
